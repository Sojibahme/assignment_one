import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "Welcome Android Developers!";

  void showToast() {
    Fluttertoast.showToast(
      msg: "Button Pressed!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Assignment One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextView
            Text(
              displayText,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),

            // ImageView
            CircleAvatar(
              radius: 50,
              child: ClipOval(
                child: Image.asset(
                  'assets/images.jpg',
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = "You clicked the button!";
                });
                showToast();
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

