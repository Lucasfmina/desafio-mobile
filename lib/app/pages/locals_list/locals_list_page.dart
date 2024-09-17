import 'package:aplicacao_base/app/pages/videoPreview/video_preview_page.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/repositories/video_repository.dart';
import 'package:aplicacao_base/http/dio_http_client.dart';
import 'package:flutter/material.dart';



class LocalsListPage extends StatefulWidget {
  const LocalsListPage({super.key});

  @override
  State<LocalsListPage> createState() => _LocalsListPageState();
}

class _LocalsListPageState extends State<LocalsListPage> {
  final IClient client = DioHttpClient(url: "http://10.0.2.2:3001");
  late VideoRepository videosRepo;
  late final ScrollController _scrollController;
  final int itemsPerPage = 20;
  bool isLoaging = true;



  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(lazyScroll);
    videosRepo = VideoRepository(client: client);
    requestPage();

  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    videosRepo.dispose();
  }

  void lazyScroll(){
    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !isLoaging){
      requestPage();
    }
  }

  void requestPage() async{
    isLoaging = true;
    videosRepo.loadRepository("/v1/videos/history?limit=$itemsPerPage");
    isLoaging = false;
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
              padding: const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
        child: AnimatedBuilder(
          animation: videosRepo, 
          builder: (context, snapshot){
            return Stack(
              children: [
                ListView.separated(
                  controller:  _scrollController,
                  itemBuilder: ((context, index) {
                    final video = videosRepo.videos[index];
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(video.location.name,
                            style: const TextStyle(
                            color: Color(0xff002aff),
                            fontWeight: FontWeight.w700)),
                          Text(video.location.address.address),
                        ],
                    ),
                trailing: IconButton(
                    onPressed: () {
                      controller.pushVideo(video);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VideoPlayerPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.chevron_right)),
                  );
                  }),
                  separatorBuilder: (_,e) => const Divider(),
                  itemCount: videosRepo.videos.length)
              ],
            );
          }
        ),
      )
    );
  
  }
}
