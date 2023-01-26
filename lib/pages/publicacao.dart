import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PublicacaoPage extends StatefulWidget {
  const PublicacaoPage({Key? key}) : super(key: key);

  @override
  State<PublicacaoPage> createState() => _PublicacaoPageState();
}

class _PublicacaoPageState extends State<PublicacaoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color.fromARGB(255, 201, 134, 118));
  }
}
