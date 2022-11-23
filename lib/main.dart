import 'package:flutter/material.dart';
// import 'package:fluttersec4/widget/bottomnavbar.dart';
// import 'package:fluttersec4/widget/bottomsheet.dart';
// import 'package:fluttersec4/widget/counterapp.dart';
// import 'package:fluttersec4/widget/drawer.dart';
// import 'package:fluttersec4/widget/snackbar.dart';
// import 'package:fluttersec4/widget/tabbar.dart';
// import 'package:fluttersec4/widget/texttfield.dart';
// import 'widget/dialog.dart';
// import 'widget/counterapp.dart';
// import 'widget/snackbar.dart';

import './pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
