import 'package:flutter/material.dart';

class CustomClipperTicket extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    var holePath = Path();
    final radius = size.height * 0.022;

    holePath.addOval(
      Rect.fromCircle(
        center: Offset(0, size.height * 0.792),
        radius: radius,
      ),
    );

    holePath.addOval(
      Rect.fromCircle(
        center: Offset(size.width, size.height * 0.792),
        radius: radius,
      ),
    );

    return Path.combine(PathOperation.difference, path, holePath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
