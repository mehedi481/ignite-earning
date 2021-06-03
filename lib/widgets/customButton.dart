import 'package:flutter/material.dart';
import 'package:ignite_earning/const/colors.dart';

Widget customButton({@required buttonTitle,@required textColor,backgroundColor,@required onPressed}){
  return GestureDetector(
      onTap: onPressed,
      child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        color: backgroundColor == null?Colors.white:Color(buttonColorBlack),
        border: Border.all(width: 2.0, color: const Color(0xff2f2e41)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("$buttonTitle",style: TextStyle(color: textColor),),
      )),
    ),
  );
} 