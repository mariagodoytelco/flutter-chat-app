import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String mensaje;

  const CustomLogo({Key? key, required this.mensaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50.0),
      width: 170.0,
      child: Column(children: [
        const Image(image: AssetImage('assets/tag-logo.png')),
        const SizedBox(height: 20.0),
        Text(mensaje, style: const TextStyle(fontSize: 30.0))
      ]),
    ));
  }
}
