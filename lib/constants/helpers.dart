import 'package:flutter/material.dart';
import 'package:uichallenge1/nm_builders/nm_builder.dart';
import 'package:uichallenge1/nm_builders/nm_round_object.dart';

final scrubberBar = neumorphicBuilder(
  leftBorderColor: Color(0xff080A0A),
  topBorderColor: Colors.black87,
  rightBorderColor: Color(0xff2B3136),
  bottomBorderColor: Color(0xff434547),
  width: 350.0,
  height: 8.0,
  borderWidth: 1.0,
  lightShadowColor: Color(0xff4E5053),
  darkShadowColor: Color(0xff040404),
  innerDepressionHeight: 1.0,
  outerShadowBlurRadius: 5.0,
  outerShadowOffset: 4.0,
  outerShadowSpread: 1.0,
  shouldHaveOuterShadow: false,
  shouldHaveInsideColoration: true,
  insideDragOffset: 200.0,
  scrubberInsideBackColor: Colors.black87,
  insideDragColorLeft: Color(0xffE85F09),
  insideDragColorRight: Color(0xffD1AC3F),
);

final thumb = neumorphicRoundObject(
  diameter: 27.0,
  image: null,
  widget: null,
  borderColor: Color(0xff2A2F35),
  borderWidth: 1.0,
  lightGradientColor: Colors.grey[800],
  darkGradientColor: Colors.black87,
  lightShadowColor: Colors.transparent,
  darkShadowColor: Colors.transparent,
  centerAlignment: Alignment.center,
  focalAlignment: Alignment.center,
  focalRadius: 0.0,
  darkShadow_dx: 0.0,
  darkShadow_dy: 0.0,
  dsShadowBlurRadius: 0.0,
  dsSpread: 0.0,
  lightShadow_dx: 0.0,
  lightShadow_dy: 0.0,
  lsShadowBlurRadius: 0.0,
  lsSpread: 0.0,
  isThumb: true,
);

final circularImage = neumorphicRoundObject(
  image: 'assets/lowlife.jpg',
  widget: null,
  diameter: 266,
  borderColor: Color(0xff131313),
  borderWidth: 7.0,
  lightGradientColor: Color(0xff2F3238),
  darkGradientColor: Color(0xff222429),
  lightShadowColor: Color(0xff3E434A),
  darkShadowColor: Color(0xff1D1F22),
  centerAlignment: Alignment.center,
  focalAlignment: Alignment.center,
  focalRadius: 0.0,
  darkShadow_dx: 15.0,
  darkShadow_dy: 15,
  dsShadowBlurRadius: 8.0,
  dsSpread: 5.0,
  lightShadow_dx: -10,
  lightShadow_dy: -10,
  lsShadowBlurRadius: 8.0,
  lsSpread: 5,
);

final pastPlayedButton = neumorphicRoundObject(
  image: null,
  widget: Icon(
    Icons.arrow_back,
    color: Color(0xff818487),
    size: 18.0,
  ),
  diameter: 44,
  borderColor: Color(0xff2A2F35),
  borderWidth: 2.0,
  lightGradientColor: Color(0xff2F3238),
  darkGradientColor: Color(0xff262A2F),
  lightShadowColor: Color(0xff3E434A),
  darkShadowColor: Color(0xff262A2F).withOpacity(0.7),
  centerAlignment: Alignment.center,
  focalAlignment: Alignment.center,
  focalRadius: 1.1,
  darkShadow_dx: 4.0,
  darkShadow_dy: 4.0,
  dsShadowBlurRadius: 4.0,
  dsSpread: 3.0,
  lightShadow_dx: -6,
  lightShadow_dy: -6,
  lsShadowBlurRadius: 8.0,
  lsSpread: 2,
);

final menuButton = neumorphicRoundObject(
  image: null,
  widget: Icon(
    Icons.dehaze,
    color: Color(0xff818487),
    size: 19.0,
  ),
  diameter: 44,
  borderColor: Color(0xff2A2F35),
  borderWidth: 2.0,
  lightGradientColor: Color(0xff2F3238),
  darkGradientColor: Color(0xff262A2F),
  lightShadowColor: Color(0xff3E434A).withOpacity(0.5),
  darkShadowColor: Color(0xff262A2F).withOpacity(0.5),
  centerAlignment: Alignment.centerLeft,
  focalAlignment: Alignment.topLeft,
  focalRadius: 1.1,
  darkShadow_dx: 3.0,
  darkShadow_dy: 3.0,
  dsShadowBlurRadius: 4.0,
  dsSpread: 3.0,
  lightShadow_dx: -4,
  lightShadow_dy: -4,
  lsShadowBlurRadius: 3.0,
  lsSpread: 2,
);

final rewindButton = neumorphicRoundObject(
  image: null,
  widget: Icon(
    Icons.fast_rewind,
    color: Color(0xff85878A),
    size: 20.0,
  ),
  diameter: 70.0,
  borderColor: Colors.grey[900],
  borderWidth: 2.0,
  lightGradientColor: Color(0xff2F3238),
  darkGradientColor: Color(0xff222429),
  lightShadowColor: Color(0xff222A2F).withOpacity(0.9),
  darkShadowColor: Color(0xff171719),
  centerAlignment: Alignment.centerLeft,
  focalAlignment: Alignment.topLeft,
  focalRadius: 1.1,
  darkShadow_dx: 15.0,
  darkShadow_dy: 15.0,
  dsShadowBlurRadius: 8.0,
  dsSpread: 5.0,
  lightShadow_dx: -7.0,
  lightShadow_dy: -5.0,
  lsShadowBlurRadius: 5.0,
  lsSpread: 4.0,
);

final pauseButton = neumorphicRoundObject(
  image: null,
  widget: Icon(
    Icons.pause,
    color: Colors.white,
    //size: 0.0,
  ),
  diameter: 80.0,
  borderColor: Color(0xffD05725),
  borderWidth: 2.0,
  lightGradientColor: Color(0xffB4341E),
  darkGradientColor: Color(0xffEA5E06),
  lightShadowColor: Color(0xff272d31),
  darkShadowColor: Color(0xff171717),
  centerAlignment: Alignment.centerRight,
  focalAlignment: Alignment.bottomRight,
  focalRadius: 1.1,
  darkShadow_dx: 15.0,
  darkShadow_dy: 15.0,
  dsShadowBlurRadius: 8.0,
  dsSpread: 5.0,
  lightShadow_dx: -8.0,
  lightShadow_dy: -8.0,
  lsShadowBlurRadius: 7.0,
  lsSpread: 4.0,
);

final fastForwardButton = neumorphicRoundObject(
  image: null,
  widget: Icon(
    Icons.fast_forward,
    color: Color(0xff85878A),
    size: 20.0,
  ),
  diameter: 70.0,
  borderColor: Colors.grey[900],
  borderWidth: 2.0,
  lightGradientColor: Color(0xff2F3238),
  darkGradientColor: Color(0xff222429),
  lightShadowColor: Color(0xff252A2F).withOpacity(0.8),
  darkShadowColor: Color(0xff171719),
  centerAlignment: Alignment.centerLeft,
  focalAlignment: Alignment.topLeft,
  focalRadius: 1.1,
  darkShadow_dx: 12.0,
  darkShadow_dy: 12.0,
  dsShadowBlurRadius: 8.0,
  dsSpread: 5.0,
  lightShadow_dx: -9,
  lightShadow_dy: -9,
  lsShadowBlurRadius: 8.0,
  lsSpread: 5.0,
);