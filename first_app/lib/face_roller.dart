import 'package:flutter/material.dart';

class FaceRoller extends StatefulWidget {
  const FaceRoller({super.key});

  @override
  State<FaceRoller> createState() {
    return _FaceRollerState();
  }
}

class _FaceRollerState extends State<FaceRoller> {
  var activeFaceImage = 'assets/images/face-smile.png';
  bool flag = true;
  void rollFace() {
    setState(() {
      print('changing face image..start value..$flag');
      if (flag) {
        activeFaceImage = 'assets/images/face-cry.png';
      } else {
        activeFaceImage = 'assets/images/face-smile.png';
      }
      flag = !flag;
      print('changing face image....$flag');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeFaceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: rollFace, child: const Text('Change Face')),
      ],
    );
  }
}
