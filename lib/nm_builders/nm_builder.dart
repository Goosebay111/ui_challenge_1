import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'edge_highlighting.dart';
import 'inner_shading.dart';

Widget neumorphicBuilder({
  final Color rightBorderColor,
  final Color bottomBorderColor,
  final Color leftBorderColor,
  final Color topBorderColor,
  final Color darkShadowColor,
  final Color lightShadowColor,
  final double innerDepressionHeight,
  final double borderWidth,
  final double width,
  final double height,
  final double outerShadowBlurRadius,
  final double outerShadowOffset,
  final double outerShadowSpread,
  final bool shouldHaveOuterShadow,
  final bool shouldHaveInsideColoration,
  final double insideDragOffset,
  final Color scrubberInsideBackColor,
  final Color insideDragColorLeft,
  final Color insideDragColorRight,
}) {
  //set overall container size. //explained in the documentation.
  return Container(
    width: width,
    height: height,
    child: Stack(
      children: <Widget>[
        // four edges highlighted.
        Positioned.fill(
          child: CustomPaint(
            painter: EdgeHighlighting(
              radius: width / 2,
              borderWidth: borderWidth,
              bottomBorderColor: bottomBorderColor,
              leftBorderColor: leftBorderColor,
              rightBorderColor: rightBorderColor,
              topBorderColor: topBorderColor,
            ),
          ),
        ),
        Container(
          child: Container(
            child: Stack(
              children: <Widget>[
                //for dark backing... to remove some of the inside shadow effects to make it dark.
                Container(
                  child: null,
                  decoration: BoxDecoration(
                      color: scrubberInsideBackColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  margin: EdgeInsets.only(left: 3, top: 1, right: 3, bottom: 3),
                ),
                // color bar.
                Container(
                  child: null,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [insideDragColorLeft, insideDragColorRight],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  margin: EdgeInsets.only(
                      left: 3, top: 2.5, right: insideDragOffset, bottom: 2.5),
                ),
              ],
            ),
            //inside shadow effects
            width: width,
            height: height,
            decoration: InnerShading(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width / 2)),
              colors: [darkShadowColor, lightShadowColor],
              depression: innerDepressionHeight,
            ),
          ),
        ),
      ],
    ),
    //outside shadow effects.
    decoration: !shouldHaveOuterShadow
        ? null
        : BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: [
              BoxShadow(
                color: darkShadowColor,
                offset: Offset(outerShadowOffset, outerShadowOffset),
                blurRadius: outerShadowBlurRadius,
                spreadRadius: outerShadowSpread,
              ),
              BoxShadow(
                color: lightShadowColor,
                offset: Offset(-outerShadowOffset, -outerShadowOffset),
                blurRadius: outerShadowBlurRadius,
                spreadRadius: outerShadowSpread,
              ),
            ],
          ),
  );
}
