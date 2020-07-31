import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custome Shapes',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomShaper(),
    );
  }
}

class CustomShaper extends StatefulWidget {
  @override
  _CustomShaperState createState() => _CustomShaperState();
}

class _CustomShaperState extends State<CustomShaper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: 200,
          color: Colors.black,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}

