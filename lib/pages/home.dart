import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 117, 106),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 0, bottom: 0, left: 0),
                  alignment: const AlignmentDirectional(0, 0),
                  child: const Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  )),
              const Text(
                'Nome Usuario',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '0.0',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Discrição do texto/foto, discrição do texto/foto, discrição do texto/foto, discrição do texto/foto, discrição do texto/foto.',
                style: TextStyle(color: Colors.white),
              ),
              Container(),
              const Text(
                'Tags:',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/estrelas.png",
                  width: 300,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 0, bottom: 0, left: 0),
                  alignment: const AlignmentDirectional(1, 0),
                  child: GestureDetector(
                    child: const Text(
                      'Pular',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(178, 255, 255, 255)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  ))
            ]),
      ),
    );
  }
}
