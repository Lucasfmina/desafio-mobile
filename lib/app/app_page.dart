import 'package:aplicacao_base/app/pages/login/login_page.dart';
import 'package:aplicacao_base/app/pages/videoPreview/video_preview_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: VideoPreviewPage());
  }
}
