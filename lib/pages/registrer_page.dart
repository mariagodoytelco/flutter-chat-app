import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';

import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/custom_labels.dart';
import 'package:chat/widgets/custom_logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomLogo(mensaje: 'Registro'),
                    _Form(),
                    const CustomLabels(
                      pregunta: '¿Ya tienes una cuenta?',
                      opcion: 'Ingresa ahora!',
                      ruta: 'login'),
                    const Text(
                      'Términos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ]),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nombreCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(children: [
         CustomInput(
            icon: Icons.perm_identity,
            placeHolder: 'Nombre',
            textController: nombreCtrl,
            keyboardType: TextInputType.text,
            isPassword: false),
        CustomInput(
            icon: Icons.mail_outline,
            placeHolder: 'Email',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
            isPassword: false),
        CustomInput(
            icon: Icons.lock_outline,
            placeHolder: 'Password',
            textController: passCtrl,
            keyboardType: TextInputType.text,
            isPassword: true),
        BotonAzul(label: 'Registrarse', accion: _accionBoton)
      ]),
    );
  }

  _accionBoton() {
    print(emailCtrl.text);
    print(passCtrl.text);
  }
}
