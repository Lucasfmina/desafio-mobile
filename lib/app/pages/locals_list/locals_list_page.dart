import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:aplicacao_base/data/repositories/video_repository.dart';
import 'package:aplicacao_base/http/dio_http_client.dart';
import 'package:flutter/material.dart';

final IClient client = DioHttpClient(url: "http://10.0.2.2:3001");
final IApiRepository repository = VideoRepository(client: client);

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
  int currentPage = 1;
  int itemsPerPage = 8;

  void requestPage() async {
    currentPage++;
    int items = currentPage * itemsPerPage;
    List<VideoModel> buffer = await repository
        .getDataList('/v1/videos/history?limit=100') as List<VideoModel>;
    setState(() {
      videoList = buffer.sublist(items - itemsPerPage);
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
            child: Column(
              children: [
                customListView(itemCount: itemsPerPage, itemList: videoList),
                backFowardButtons(
                    onPressBack: () {}, onPressFoward: requestPage)
              ],
            ),
          )),
    );
  }
}

Widget customListView(
    {required int itemCount, required List<VideoModel> itemList}) {
  return Expanded(
    flex: itemCount,
    child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(itemList[index].location.name),
            trailing: const Icon(Icons.chevron_right),
          );
        }),
        separatorBuilder: (_, e) => const Divider(),
        itemCount: itemCount),
  );
}

Widget backFowardButtons(
    {required Function() onPressBack, required Function() onPressFoward}) {
  return Expanded(
    flex: 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
            onPressed: onPressBack, child: const Icon(Icons.arrow_back)),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
            onPressed: onPressFoward, child: const Icon(Icons.arrow_forward))
      ],
    ),
  );
}
