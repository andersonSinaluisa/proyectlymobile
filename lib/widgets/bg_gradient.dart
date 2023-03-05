import 'package:flutter/material.dart';
import 'package:proyectly/widgets/colors.dart';


class BgGradient extends StatelessWidget {
  const BgGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsApp.color4,
            ColorsApp.color3
          ],
          begin: FractionalOffset(0.0, 0.3),
          end: FractionalOffset(3.0, 0.6),
          stops: [0.0, 0.5,],
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}