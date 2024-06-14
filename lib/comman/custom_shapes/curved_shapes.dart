import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final secondCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, secondCurve.dx, secondCurve.dy);
    final secfirstCurve = Offset(0, size.height - 20);
    final secsecondCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secfirstCurve.dx, secfirstCurve.dy,
        secsecondCurve.dx, secsecondCurve.dy);
    final thirdfirstCurve = Offset(size.width, size.height - 20);
    final thirdsecondCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstCurve.dx, thirdfirstCurve.dy,
        thirdsecondCurve.dx, thirdsecondCurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
