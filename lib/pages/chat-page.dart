import 'package:flutter/material.dart';
import 'package:whatsappui/models/user_model.dart';
import 'package:whatsappui/pages/chatt_details.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userModel.length,
        itemBuilder: (context, index) => Column(
              children: [
                // ignore: prefer_const_constructors
                ListTile(
                  // ignore: prefer_const_constructors
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(userModel[index].avater),
                  ),
                  title: Text(
                    userModel[index].name,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    userModel[index].message,
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  trailing: Text(
                    userModel[index].time,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatDetailPage()));
                  },
                ),
              ],
            ));
  }
}
