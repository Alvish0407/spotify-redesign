// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color dadada;
  late Color c797979;
  late Color f6f6f6;
  late Color f2f2f2;
  late Color a0a0a0;
  late Color d7d7d7;
  late Color e1e1e1;
  late Color hintColor;
  late Color aeaeae;
  late Color gradient1;
  late Color gradient2;
  late Color dcdcdc;
  late Color dbdbdb;
  late Color blueColor;
  late Color fbfbfb;
  late Color c616161;
  late Color c6c6c6;
  late Color d6d6d6;
  late Color dddddd;
  late Color dfdfdf;
  late Color bababa;
  late Color b7b7b7;
  late Color c878787;
  late Color c939393;
  late Color cbcbcb;
  late Color c2C2B2B;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF42C83C);
  late Color secondaryColor = const Color(0xFF38B432);
  late Color tertiaryColor = const Color(0xFF38B432);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFF1C1B1B);
  late Color secondaryBackground = const Color(0xFF343434);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF57636C);

  late Color dadada = Color(0xFFDADADA);
  late Color c797979 = Color(0xFF797979);
  late Color f6f6f6 = Color(0xFFF6F6F6);
  late Color f2f2f2 = Color(0xFFF2F2F2);
  late Color a0a0a0 = Color(0xFFA0A0A0);
  late Color d7d7d7 = Color(0xFFD7D7D7);
  late Color e1e1e1 = Color(0xFFE1E1E1);
  late Color hintColor = Color(0xFFA7A7A7);
  late Color aeaeae = Color(0xFFAEAEAE);
  late Color gradient1 = Color(0xFF5B5B5B);
  late Color gradient2 = Color(0xFF252525);
  late Color dcdcdc = Color(0xFFDCDCDC);
  late Color dbdbdb = Color(0xFFDBDBDB);
  late Color blueColor = Color(0xFF288CE9);
  late Color fbfbfb = Color(0xFFFBFBFB);
  late Color c616161 = Color(0xFF616161);
  late Color c6c6c6 = Color(0xFFC6C6C6);
  late Color d6d6d6 = Color(0xFFD6D6D6);
  late Color dddddd = Color(0xFFDDDDDD);
  late Color dfdfdf = Color(0xFFDFDFDF);
  late Color bababa = Color(0xFFBABABA);
  late Color b7b7b7 = Color(0xFFB7B7B7);
  late Color c878787 = Color(0xFF878787);
  late Color c939393 = Color(0xFF939393);
  late Color cbcbcb = Color(0xFFCBCBCB);
  late Color c2C2B2B = Color(0xFF2C2B2B);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Satoshi';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontStyle: FontStyle.normal,
      );
  String get title2Family => 'Satoshi';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  String get title3Family => 'Satoshi';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Satoshi';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'Satoshi';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  String get bodyText1Family => 'Satoshi';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  String get bodyText2Family => 'Satoshi';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
