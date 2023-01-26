import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../login/login.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 300), () {
      checkSignedIn();
    });
  }

  checkSignedIn() async {
    bool isLoggedIn = false;
    if (isLoggedIn) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      return;
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SplashPage()));
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bem vindo(a)',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Colors.white),
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
