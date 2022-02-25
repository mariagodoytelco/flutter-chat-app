import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(children: [
            CircleAvatar(
              child: Text('Ma', style: TextStyle(fontSize: 12.0)),
              backgroundColor: Colors.blue[100],
              maxRadius: 14,
            ),
            const SizedBox(height: 3.0),
            Text('Maria Godoy',
                style: TextStyle(color: Colors.black87, fontSize: 12.0))
          ]),
          centerTitle: true,
          elevation: 1,
        ),
        body: Container(
          child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) => Text('$i'),
                reverse: true,
              )),
              const Divider(height: 1),
              Container(
                color: Colors.white,
                child: _inputChat(),
              )
            ],
          ),
        ));
  }

  Widget _inputChat() {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: (_){},
              onChanged: (String texto){

              },
              decoration: InputDecoration.collapsed(
                hintText: 'enviar mensaje'
              ),
              focusNode: _focusNode,
            )
          )
        ],
      ),
    ));
  }
}
