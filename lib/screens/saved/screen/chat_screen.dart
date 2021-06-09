import 'package:diplom_app/screens/saved/model/user.dart';
import 'package:diplom_app/screens/saved/widget/messages_widget.dart';
import 'package:diplom_app/screens/saved/widget/new_message_widget.dart';
import 'package:diplom_app/screens/saved/widget/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final Userr user;

  const ChatScreen({
    @required this.user,
    Key key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.blue,
    body: SafeArea(
      child: Column(
        children: [
          ProfileHeaderWidget(name: widget.user.name),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: MessagesWidget(idUser: widget.user.idUser),
            ),
          ),
          NewMessageWidget(idUser: widget.user.idUser)
        ],
      ),
    ),
  );
}