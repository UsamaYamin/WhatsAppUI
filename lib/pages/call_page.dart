import 'package:flutter/material.dart';
import 'package:whatsappui/models/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callModel.length,
        itemBuilder: ((context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(callModel[index].avater),
                  ),
                  title: Text(
                    callModel[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // ignore: prefer_const_constructors
                  subtitle: Text(
                    callModel[index].time,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(
                    Icons.call,
                    size: 25,
                  ),
                ),
              ],
            )));
  }
}
