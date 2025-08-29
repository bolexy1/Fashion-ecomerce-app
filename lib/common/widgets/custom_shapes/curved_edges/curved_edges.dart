import "package:flutter/material.dart";

class BCustomeCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height-20);
    final LastCurve = Offset(30, size.height-20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, LastCurve.dx, LastCurve.dy);

    final SecondCurve = Offset(0, size.height-20);
    final SecondLastCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(SecondCurve.dx, SecondCurve.dy, SecondLastCurve.dx, SecondLastCurve.dy);

    final thirdCurve = Offset(size.width, size.height-20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdCurve.dx, thirdCurve.dy, thirdLastCurve.dx,thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
   return true;
  }


}