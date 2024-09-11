import 'package:aplicacao_base/app/app_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}










// import 'package:aplicacao_base/app/pages/videoPreview/video_preview_page.dart';
// import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
// import 'package:aplicacao_base/data/interfaces/client.interface.dart';
// import 'package:aplicacao_base/data/repositories/video_repository.dart';
// import 'package:aplicacao_base/http/dio_http_client.dart';
// import 'package:flutter/material.dart';

// List jsonList = [];
// final IClient client = DioHttpClient(url: "http://10.0.2.2:3001");
// final IApiRepository rep = VideoRepository(client: client);
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   void request() async {
//     List data = await rep.getDataList('/v1/videos/history?limit=10');

//     setState(() {
//       jsonList = data;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: ListTile(
//               title: Text(jsonList[index].fileName),
//             ),
//           );
//         },
//         itemCount: jsonList.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: request,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
