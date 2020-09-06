//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myapp();
  }

  myapp() {
    //BuildContext context;
    AudioPlayer audioplayer = AudioPlayer();
    var url =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjBPaXNBtQloVPG7_I7Sseq52xLHeyLDloOQ&usqp=CAU';
    var logo = Image.network(url);
    var filepath;
    var x = Text(
      "Audio Player",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        foreground: Paint()
          ..style = PaintingStyle.fill
          ..strokeWidth = 2
          ..color = Colors.cyanAccent,
      ),
    );
    var myhomebody = Center(
        child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                        'https://www.aoos.com/media/catalog/product/cache/d3537c321a700cb9c1fb7a409c881eeb/m/i/microphone_live_music_neon_sign_l187.jpg'),
                  ],
                ),
                //Spacer(),
                //  Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        audioplayer.pause();
                        // isplaying = false;
                      },
                      child: Icon(Icons.pause_circle_filled),
                      color: Colors.blueGrey,
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: () {
                        audioplayer.play(filepath, isLocal: true);
                        //  isplaying = true;
                      },
                      child: Icon(Icons.play_circle_filled),
                      color: Colors.blueGrey,
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: () {
                        //var audioplayer = AudioPlayer();
                        audioplayer.stop();
                        // isplaying = false;
                      },
                      child: Icon(Icons.stop),
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
                Spacer(),
                FloatingActionButton.extended(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () async {
                    //  var audioplayer = AudioPlayer();
                    filepath = await FilePicker.getFilePath();
                  },
                  label: Text('Add Music'),
                  icon: Icon(Icons.library_music),
                ),
              ],
            )));

    var myappbar = AppBar(
      title: x,
      //leading: logo,
      backgroundColor: Colors.black,
    );

    var myhome = Scaffold(
      appBar: myappbar,
      body: myhomebody,
      backgroundColor: Colors.black,
      // bottomNavigationBar: mybar,
    );
    var design = MaterialApp(
      home: myhome,
      debugShowCheckedModeBanner: false,
    );

    return design;
  }
}
