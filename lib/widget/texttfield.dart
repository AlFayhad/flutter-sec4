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
      home: tfield(),
    );
  }
}

class tfield extends StatefulWidget {
  const tfield({Key? key}) : super(key: key);

  @override
  State<tfield> createState() => _tfieldState();
}

class _tfieldState extends State<tfield> {
  bool isHidden = true;

  @override
  TextEditingController emailC =
      TextEditingController(); //membuat controler dari email dan pw
  TextEditingController passlC = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: emailC,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passlC,
              autocorrect: false,
              obscureText: isHidden, //untuk menyembunyikan password
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else {
                          isHidden = true;
                        }
                        setState(
                            () {}); // untuk menerima perubahan dari stateful
                      },
                      icon: Icon(Icons.remove_red_eye))),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print(
                    "ADA LOGIN DARI EMAIL(${emailC.text}) & PASSWORD(${passlC.text})"); // menampilkan email dan pw yang dimasukkan
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ));
  }
}
