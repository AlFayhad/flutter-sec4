import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        title: Text("INI JUDUL"),
                        content: Text("ini adalah isi dialog"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Cancel")),
                          ElevatedButton(onPressed: () {}, child: Text("Yes")),
                        ],
                      ));
            },
            child: Text("Dialog Fluter")),
      ),
    );
  }
}
