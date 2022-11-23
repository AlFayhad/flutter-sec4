import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// stateless  -> tampilan static -> tidak terjadi perubahan state pada screen -> tidak punya func setState()
// stateful   -> tampilan dynamic(berubah ubah) -> terjadi perubahan state pada screen -> punya func setState()

class counterapp extends StatefulWidget {
  @override
  State<counterapp> createState() => _MyAppState();
}

class _MyAppState extends State<counterapp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        nilai--;
                        print("Dikurang");
                        setState(() {});
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        nilai++;
                        print("Ditambah");
                        setState(() {});
                      },
                      child: Icon(Icons.add)),

                    Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                    initialValue: 'admin@gmail.com',
                    maxLength: 20,
                    decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                    Icons.email,
                    ),
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    color: Colors.blueGrey,
                    ),
                    ),
                    helperText: 'Enter your email address',
                    ),
                    onChanged: (value) {},
                    ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
