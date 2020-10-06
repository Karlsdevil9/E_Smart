import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
      painter: CurvePainter(),
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 5, 25, 0),
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Align(
              child: Text(
                "Hello there,\nwelcome back",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Login"),
            )
          ],
        ),
      ),
    ));
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.32);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.40,
        size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.30,
        size.width * 1.0, size.height * 0.28);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
