import 'package:flutter/material.dart';
import 'package:fluttersec4/main.dart';

class drawr extends StatelessWidget {
  const drawr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Text(
                "DASHBOARD",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (() {}),
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
