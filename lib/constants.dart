import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kBlueColor = Color(0xFF00B8FC);
const kOrangeColor = Color(0xFFFF5134);
const kBlackColor = Color(0xFF3A3A3A);
const kBlack2Color = Color(0xFF353535);
const kWhiteColor = Color(0xFFF7FAFE);

final Shader linearGradient = LinearGradient(
  colors: <Color>[kWhiteColor, kBlackColor],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

const kH1Style = TextStyle(
  color: kBlackColor,
  fontWeight: FontWeight.bold,
  fontSize: 23.0,
  fontFamily: "Gilroy",
  wordSpacing: 5.0,
);
const kH2Style = TextStyle(
  color: kBlackColor,
  fontWeight: FontWeight.bold,
  fontSize: 19.0,
  fontFamily: "Gilroy",
);
const kH3Style = TextStyle(
  color: kBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 14.0,
  fontFamily: "Gilroy",
);

const kH2SubtitleStyle = TextStyle(
  color: kOrangeColor,
  fontSize: 15.0,
  fontFamily: "Gilroy",
);

var kTitleStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  foreground: Paint()..shader = linearGradient,
  fontFamily: "Gilroy",
);
var kSubtitleStyle = TextStyle(
  fontSize: 17.0,
  fontFamily: "Gilroy",
  color: kWhiteColor,
);

var kCategoryTextStyle = TextStyle(
  fontSize: 11.0,
  fontFamily: "Gilroy",
  color: kBlackColor,
);

var kDescriptionStyle = TextStyle(
  fontSize: 16.0,
  height: 1.5,
  color: Color(0xFFB0B5C1),
  fontFamily: "Gilroy",
);
