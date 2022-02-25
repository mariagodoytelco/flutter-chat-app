import 'package:chat/pages/chat_page.dart';
import 'package:chat/pages/loading_page.dart';
import 'package:chat/pages/login_page.dart';
import 'package:chat/pages/registrer_page.dart';
import 'package:chat/pages/usuarios_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/'        : ( _ ) => const LoadingPage(),
  'usuarios' : ( _ ) => const UsuariosPage(),
  'chat'     : ( _ ) => const ChatPage(),
  'login'    : ( _ ) => const LoginPage(),
  'register' : ( _ ) => const RegisterPage(),
  'loading'  : ( _ ) => const LoadingPage()

};
