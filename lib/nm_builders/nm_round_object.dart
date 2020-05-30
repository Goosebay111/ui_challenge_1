import 'package:flutter/material.dart';

Widget neumorphicRoundObject({
  String image,
  Color lightShadowColor,
  Color darkShadowColor,
  Widget widget,
  double diameter,
  Color lightGradientColor,
  Color darkGradientColor,
  double borderWidth,
  Color borderColor,
  Alignment focalAlignment,
  Alignment centerAlignment,
  double focalRadius,
  double darkShadow_dx,
  double darkShadow_dy,
  double lightShadow_dx,
  double lightShadow_dy,
  double lsShadowBlurRadius,
  double dsShadowBlurRadius,
  double lsSpread,
  double dsSpread,
  bool isThumb,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      width: diameter,
      height: diameter,
      child: Stack(
        children: <Widget>[
          Center(child: widget),
          Center(
            child: (image == null)
                ? Center(
                    //inner circle widget.
                    child: Container(
                      width: diameter / 3,
                      height: diameter / 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            isThumb == true
                                ? Color(0xff896B28)
                                : Colors.transparent,
                            isThumb == true
                                ? Color(0xffB19E3C)
                                : Colors.transparent,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25.0 / 6.0),
                      ),
                    ),
                  )
                : CircleAvatar(
                    radius: diameter / 2,
                    backgroundImage: AssetImage(image),
                  ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [darkGradientColor, lightGradientColor],
              radius: 1.1,
              focal: Alignment.bottomRight,
              center: Alignment.centerRight),
          borderRadius: BorderRadius.all(Radius.circular(diameter / 2)),
          border: Border.all(width: borderWidth, color: borderColor),
          boxShadow: [
            BoxShadow(
              color: darkShadowColor,
              offset: Offset(darkShadow_dx, darkShadow_dy),
              blurRadius: dsShadowBlurRadius,
              spreadRadius: dsSpread,
            ),
            BoxShadow(
              color: lightShadowColor,
              offset: Offset(lightShadow_dx, lightShadow_dy),
              blurRadius: lsShadowBlurRadius,
              spreadRadius: lsSpread,
            ),
          ]),
    ),
  );
}
