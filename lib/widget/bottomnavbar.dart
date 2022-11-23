import 'package:flutter/material.dart';

class bootnavbar extends StatefulWidget {
  const bootnavbar({Key? key}) : super(key: key);

  @override
  State<bootnavbar> createState() => _bootnavbarState();
}

class _bootnavbarState extends State<bootnavbar> {
  late int index = 0;
  List showWidget = [
    Center(
      child: Text("HOME"),
    ),
    Center(
      child: Text("CART"),
    ),
    Center(
      child: Text("PROFILE"),
    ),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        iconSize: 30,
        currentIndex: index,
        onTap: (value) {
          //mengganti data state di index
          setState(() { 
            index = value;
          });
          print(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
