import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation1/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (redContext) => RedPage()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              child: Text(
                'Kırmızı Sayfaya git ios',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, route);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RedPage()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text(
                'Kırmızı Sayfaya git Android',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
