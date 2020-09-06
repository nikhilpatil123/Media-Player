import 'package:flutter/material.dart';
//import 'package:oneapp/video.dart';

class MyHome extends StatelessWidget {
  @override
  var myappbar = AppBar(
    title: Text(
      "Media Player",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        foreground: Paint()
          ..style = PaintingStyle.fill
          ..strokeWidth = 2
          ..color = Colors.cyanAccent,
      ),
    ),
    leading: Icon(Icons.library_music),
    backgroundColor: Colors.black,
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://casablancahotel.ca/wp-content/uploads/2019/06/310182.jpg'),
              fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: double.infinity,
        //color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/audio");
              },
              child: Text(
                'Play Audio',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.blueGrey[800],
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/video");
              },
              child: Text(
                'Play Video',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.blueGrey[800],
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
