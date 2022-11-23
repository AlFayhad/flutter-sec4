import 'package:flutter/material.dart';

class bootsheet extends StatelessWidget {
  const bootsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false, // sebagai back ke home disabled
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("KLIK PHOTO"),
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                      ),
                      ListTile(
                        onTap: () => print("KLIK MUSIC"),
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("Music"),
                      ),
                      ListTile(
                        onTap: () => print("KLIK VIDEO"),
                        leading: Icon(Icons.video_collection),
                        title: Text("Video"),
                      ),
                      ListTile(
                        onTap: () => print("KLIK SHARE"),
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                      ),
                      ListTile(
                        onTap: () =>
                            Navigator.pop(context), // untuk kembali ke home
                        leading: Icon(Icons.cancel_outlined),
                        title: Text("Cancel"),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("SHOW BOTTOM SHEET"),
          ),
        ),
      ),
    );
  }
}
