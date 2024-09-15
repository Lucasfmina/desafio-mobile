import 'package:aplicacao_base/app/pages/locals_list/locals_list_page.dart';
import 'package:aplicacao_base/app/pages/login/login_page.dart';
import '../../shared/themes/theme.dart';
import '../../shared/themes/util.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Gabriel Desafio Mobile',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const LocalsListPage(),
    );
  }
}
