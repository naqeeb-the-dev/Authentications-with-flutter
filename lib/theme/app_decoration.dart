import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get gradientIndigo600Lightblue401 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            -3.0616171314629196e-17,
          ),
          end: Alignment(
            0.5,
            0.9999999999999999,
          ),
          colors: [
            ColorConstant.indigo600,
            ColorConstant.lightBlue401,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteA700Gray100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            -3.0616171314629196e-17,
          ),
          end: Alignment(
            0.5,
            0.9999999999999999,
          ),
          colors: [
            ColorConstant.whiteA700,
            ColorConstant.gray100,
          ],
        ),
      );
  static BoxDecoration get fillCyan201 => BoxDecoration(
        color: ColorConstant.cyan201,
      );
  static BoxDecoration get fillBlue700 => BoxDecoration(
        color: ColorConstant.blue700,
      );
  static BoxDecoration get fillIndigo501 => BoxDecoration(
        color: ColorConstant.indigo501,
      );
  static BoxDecoration get gradientIndigo500Lightblue400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            -3.0616171314629196e-17,
          ),
          end: Alignment(
            0.5,
            0.9999999999999999,
          ),
          colors: [
            ColorConstant.indigo500,
            ColorConstant.lightBlue400,
          ],
        ),
      );
  static BoxDecoration get fillCyan200 => BoxDecoration(
        color: ColorConstant.cyan200,
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get fillLightblue401 => BoxDecoration(
        color: ColorConstant.lightBlue401,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius roundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );
}
