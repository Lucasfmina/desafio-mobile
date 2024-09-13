import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding:
              const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/gabriel_icon.png',
                    width: 128,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bem Vindo!",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Digite seus dados",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text('e-mail'),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            return value;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text('senha'),
                              border: OutlineInputBorder()),
                          obscureText: true,
                          validator: (value) {
                            return value;
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Entrar"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

void validateUser(String? userInput) {
  print("ai que nao sei o que");
}
