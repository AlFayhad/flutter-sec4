import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tabbar(),
    );
  }
}

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //DefaultTabController => setiap tabbar sudah mempunyai controller memiliki 
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Whatsapp"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Call",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("CAMERA"),
          ),
          Center(
            child: Text("CHATS"),
          ),
          Center(
            child: Text("STATUS"),
          ),
          Center(
            child: Text("CALL"),
          ),
        ]),
      ),
    );
  }
}
