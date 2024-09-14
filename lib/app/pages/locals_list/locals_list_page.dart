import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:aplicacao_base/data/repositories/video_repository.dart';
import 'package:aplicacao_base/http/dio_http_client.dart';
import 'package:flutter/material.dart';

final IClient client = DioHttpClient(url: "http://10.0.2.2:3001");
final IApiRepository repository = VideoRepository(client: client);
int currentPage = 0;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    requestPage();
  }

  List<VideoModel> videoList = [];
  int itemsPerPage = 8;
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
        title: const Text("Locais"),
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
                          itemCount: itemsPerPage, itemList: videoList),
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
    {required int itemPerPage, required List<VideoModel> itemList}) {
  return Expanded(
    flex: itemPerPage,
    child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(itemList[index].location.name),
            trailing: const Icon(Icons.chevron_right),
          );
        }),
        separatorBuilder: (_, e) => const Divider(),
        itemCount: itemPerPage),
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
