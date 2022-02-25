import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  final String ruta;
  final String pregunta;
  final String opcion;

  const CustomLabels({
    Key? key, 
    required this.ruta, 
    required this.pregunta, 
    required this.opcion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(pregunta,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 15.0,
          fontWeight: FontWeight.w300)),
      const SizedBox(height: 10.0),
      GestureDetector(
        child: Text(
          opcion,
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 18,
            fontWeight: FontWeight.bold)),
        onTap: () {
          Navigator.pushReplacementNamed(context, ruta);
        },
      )
    ]);
  }
}
