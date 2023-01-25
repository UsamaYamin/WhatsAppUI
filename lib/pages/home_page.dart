import 'package:flutter/material.dart';
import 'package:whatsappui/pages/call_page.dart';
import 'package:whatsappui/pages/chat-page.dart';
import 'package:whatsappui/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () {
                  print('clicked');
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('three dot pressed');
                },
                icon: const Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            tabs: topTabs,
            controller: _tabController,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(controller: _tabController, children: const [
          Text('camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ]));
  }
}
