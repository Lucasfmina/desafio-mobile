import 'package:aplicacao_base/app/pages/login/login_page.dart';

import '../../shared/themes/theme.dart';
import '../../shared/themes/util.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Gabriel Desafio Mobile',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const LoginPage(),
    );
  }
}
