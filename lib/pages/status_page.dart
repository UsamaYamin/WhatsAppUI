import 'package:flutter/material.dart';
import 'package:whatsappui/models/status_model.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        ListTile(
          // ignore: prefer_const_constructors
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          title: const Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Tap To Add Your Status'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Viewed Updates',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
        Flexible(
            child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(
                    statusData[index].avatar,
                  ),
                ),
                title: Text(
                  statusData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(statusData[index].time),
              )
            ],
          ),
        ))
      ],
    );
  }
}
