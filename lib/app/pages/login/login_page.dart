import 'package:aplicacao_base/shared/components/main_icon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        MainIcon(
          iconPath: 'assets/gabriel_icon.png',
          label: "Bem Vindo!",
          iconHeight: 128,
        ),
      ]),
    );
  }
}
