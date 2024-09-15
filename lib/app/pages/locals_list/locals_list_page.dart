import 'package:aplicacao_base/app/pages/controller.dart';
import 'package:aplicacao_base/app/pages/videoPreview/video_preview_page.dart';
import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:aplicacao_base/data/repositories/video_repository.dart';
import 'package:aplicacao_base/http/dio_http_client.dart';
import 'package:flutter/material.dart';

final IClient client = DioHttpClient(url: "http://10.0.2.2:3001");
final IApiRepository repository = VideoRepository(client: client);
final Controller controller = Controller();

int currentPage = 0;

class LocalsListPage extends StatefulWidget {
  const LocalsListPage({super.key});

  @override
  State<LocalsListPage> createState() => _LocalsListPageState();
}

class _LocalsListPageState extends State<LocalsListPage> {
  @override
  void initState() {
    super.initState();
    requestPage();
  }

  List<VideoModel> videoList = [];
  int itemsPerPage = 6;
  bool isLoaging = true;

  void requestPage() async {
    currentPage++;
    int items = currentPage * itemsPerPage;
    List<VideoModel> buffer = await repository
        .getDataList('/v1/videos/history?limit=$items') as List<VideoModel>;
    setState(() {
      videoList = buffer.sublist(items - itemsPerPage);
      isLoaging = false;
    });
  }

  void returnPage() async {
    currentPage--;
    int items = currentPage * itemsPerPage;
    List<VideoModel> buffer = await repository
        .getDataList('/v1/videos/history?limit=$items') as List<VideoModel>;
    setState(() {
      videoList = buffer.sublist(items - itemsPerPage);
      isLoaging = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Locais",
          style:
              TextStyle(color: Color(0xff001f60), fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding:
              const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
          child: Center(
            child: isLoaging
                ? const CircularProgressIndicator()
                : Column(
                    children: [
                      customListView(
                          itemsPerPage: itemsPerPage, itemList: videoList),
                      backFowardButtons(
                          onPressBack: returnPage,
                          onPressFoward: requestPage,
                          pages: 100)
                    ],
                  ),
          )),
    );
  }
}

Widget customListView(
    {required int itemsPerPage, required List<VideoModel> itemList}) {
  return Expanded(
    flex: itemsPerPage + 1,
    child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemList[index].location.name,
                    style: const TextStyle(color: Color(0xff002aff))),
                Text(itemList[index].location.address.address),
              ],
            ),
            trailing: IconButton(
                onPressed: () {
                  controller.pushVideo(itemList[index]);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VideoPlayerPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.chevron_right)),
          );
        }),
        separatorBuilder: (_, e) => const Divider(),
        itemCount: itemsPerPage),
  );
}

Widget backFowardButtons(
    {required Function() onPressBack,
    required Function() onPressFoward,
    required int pages}) {
  void backPressed() {
    if (currentPage > 1) {
      currentPage--;
      onPressBack();
    }
  }

  void fowardPressed() {
    if (currentPage < pages) {
      currentPage++;
      onPressFoward();
    }
  }

  return Expanded(
    flex: 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: backPressed, child: const Icon(Icons.arrow_back)),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
            onPressed: fowardPressed, child: const Icon(Icons.arrow_forward))
      ],
    ),
  );
}
