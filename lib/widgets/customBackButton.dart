import 'package:flutter/cupertino.dart';

Widget customBackButton({@required onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 35,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffffffff),
          border: Border.all(width: 1.0, color: const Color(0xff707070)),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            "assets/backArraw.png",
            height: 14,
            width: 16,
          ),
        ),
      ),
    ),
  );
}
