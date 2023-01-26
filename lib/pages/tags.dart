import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class TagsPage extends StatefulWidget {
  const TagsPage({Key? key}) : super(key: key);

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 117, 106),
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
              Container(
                alignment: const AlignmentDirectional(-1, 0),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Escolha suas tags de interesse:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                // margin: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(178, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [],
                ),
                height: 400,
              ),
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
                              builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      "Navegar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 0, bottom: 0, left: 0),
                  child: GestureDetector(
                    child: const Text(
                      'Mínimo: 5',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(178, 255, 255, 255)),
                    ),
                  ))
            ]),
      ),
    );
  }
}
