import 'package:flutter/material.dart';
class GreenOval extends StatelessWidget {
  const GreenOval({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -80,
      left: -20,
      right: -20,
      child: Container(
        width: 566,
        height: 241,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.00, 0.00),
            end: Alignment(-1, 0),
            colors: [Color(0xFF72D9C1), Color(0xFF028174)],
          ),
          shape: OvalBorder(),
        ),
      ),
    );
  }
}
