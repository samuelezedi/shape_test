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
    return Scaffold(body: Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 200,
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
//    path.lineTo(0.0, size.height);
//    path.lineTo(size.width, size.height/2);
//    path.lineTo(size.width,0.0);

    path.quadraticBezierTo(size.width * 0.55, size.height * 0.875,
        size.width * 0.25, size.width * 0.75);
    path.moveTo(0, size.height * 0.80);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.80);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}

