import 'package:flutter/material.dart';

class VideoPreviewPage extends StatelessWidget {
  const VideoPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text('VideoPreviewPage'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
