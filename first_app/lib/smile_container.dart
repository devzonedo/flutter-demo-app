import 'package:first_app/face_roller.dart';
import 'package:flutter/material.dart';

class SmileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     const SizedBox(
    //       height: 10,
    //     ),
    //     Text(' Text inside column'),
    //     const SizedBox(
    //       height: 10,
    //     ),
    //     Text(' Text inside column 2'),
    //   ],
    // );

    return Container(
      child: Center(
        child: const FaceRoller(),
      ),
    );
  }
}
