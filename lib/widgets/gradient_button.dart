// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_and_signup/pallete.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 246, 246, 246),
        // gradient: const LinearGradient(
        //   colors: [
        //     Pallete.gradient1,
        //     Pallete.gradient2,
        //     Pallete.gradient3,
        //   ],
        //   begin: Alignment.bottomLeft,
        //   end: Alignment.topRight,
        // ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(362, 55),
          backgroundColor: Color.fromARGB(255, 54, 54, 54),
          // backgroundColor: Color.fromARGB(0, 255, 255, 255),
          // shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 184, 184, 184),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
