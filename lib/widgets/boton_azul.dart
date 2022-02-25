import 'dart:ffi';

import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String label;
  final void Function() accion;

  const BotonAzul({Key? key, required this.label, required this.accion}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2.0,
      highlightElevation: 5.0,
      color: Colors.blue,
      shape: const StadiumBorder(),
      child: SizedBox(
        width: double.infinity,
        height: 55.0,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 17.0),
          )
        ),
      ),
      onPressed: accion,
  );
  }
}
