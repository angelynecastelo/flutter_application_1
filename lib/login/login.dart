import 'package:flutter/material.dart';

import '../pages/cadastro.dart';
import '../pages/esqueceu_senha.dart';
import '../pages/home.dart';
import '../pages/tags.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 117, 106),
      // backgroundColor: Color.fromARGB(255, 221, 110, 180),

      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: const AlignmentDirectional(-1, 0),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Bem vindo(a)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/logo.png",
                  width: 250,
                ),
              ),
              Container(
                alignment: const AlignmentDirectional(-1, 0),
                child: const Text(
                  'E-mail',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextField(
                  // autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    filled: true,
                    fillColor: const Color.fromARGB(95, 255, 255, 255),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: const AlignmentDirectional(-1, 0),
                child: const Text(
                  'Senha',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      filled: true,
                      fillColor: const Color.fromARGB(95, 255, 255, 255),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 0, bottom: 0, left: 0),
                  alignment: const AlignmentDirectional(1, 0),
                  child: GestureDetector(
                    child: const Text(
                      'Esqueceu senha?',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(178, 255, 255, 255)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EsqueceuSenhaPage()));
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 10),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(178, 255, 255, 255),
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TagsPage()));
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 0, bottom: 0, left: 0),
                  child: GestureDetector(
                    child: const Text(
                      'Cadastrar-se',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(178, 255, 255, 255)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CadastroPage()));
                    },
                  )),
              // Container(
              //     padding: const EdgeInsets.only(
              //         top: 10, right: 0, bottom: 0, left: 0),
              //     child: GestureDetector(
              //       child: const Text(
              //         'tags',
              //         // textAlign: TextAlign.left,
              //         style: TextStyle(
              //             fontSize: 18,
              //             color: Color.fromARGB(178, 255, 255, 255)),
              //       ),
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const TagsPage()));
              //       },
              //     )),
            ]),
      ),
    );
  }
}
