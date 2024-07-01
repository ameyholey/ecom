import 'package:flutter/material.dart';
import 'package:t_store/comman/custom_shapes/curved_shapes.dart';
class TCurvededgewidget  extends StatelessWidget {
  const TCurvededgewidget ({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
    clipper: TCustomCurvedEdges(

    ),
    child: child,
    );
  }
}
