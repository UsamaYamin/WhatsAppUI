// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappui/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        // ignore: prefer_const_literals_to_create_immutables
        title: Row(children: [
          // ignore: prefer_const_constructors
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/IMG_20200403_160103.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text('John Doe'),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {
                print('video call');
              },
              icon: Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                print('call btn clicked');
              },
              icon: Icon(Icons.call)),
          IconButton(
              onPressed: () {
                print('three dot clicked');
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(children: [
        Expanded(child: MessagePage()),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Flexible(
                  child: TextFormField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ))
            ],
          ),
        )
      ]),
    );
  }
}
