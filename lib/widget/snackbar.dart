import 'package:flutter/material.dart';
import 'package:fluttersec4/widget/dialog.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: snack(),
    );
  }
}

class snack extends StatelessWidget {
  const snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Hapus Produk Berhasil"),
                action: SnackBarAction(
                  label: "CANCEL",
                  onPressed: () {
                    print("tidak jadi diubah");
                  },
                  textColor: Colors.red,
                ),
                backgroundColor: Colors.black,
                duration: Duration(seconds: 6),
                margin: EdgeInsets.all(15),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ));
            },
            child: Text("SNACK")),
      ),
    );
  }
}
