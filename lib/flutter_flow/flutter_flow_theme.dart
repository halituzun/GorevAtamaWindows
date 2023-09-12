// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color richBlack;
  late Color chocolateCosmos;
  late Color rosewood;
  late Color pennRed;
  late Color engineeringOrange;
  late Color white;
  late Color persimmon;
  late Color princetonOrange;
  late Color orangeWeb;
  late Color selectiveYellow;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFF0000);
  late Color secondary = const Color(0xFFF9844A);
  late Color tertiary = const Color(0xFFA4A4A4);
  late Color alternate = const Color(0xFFFF0000);
  late Color primaryText = const Color(0xFF273043);
  late Color secondaryText = const Color(0xFF087E8B);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFFF4D4D);
  late Color accent2 = const Color(0xFFFF8080);
  late Color accent3 = const Color(0xFFFFB3B3);
  late Color accent4 = const Color(0xFFFFCCCC);
  late Color success = const Color(0xFF00FF00);
  late Color warning = const Color(0xFFFFFF00);
  late Color error = const Color(0xFFFF0000);
  late Color info = const Color(0xFF0000FF);

  late Color richBlack = Color(0xFF03071E);
  late Color chocolateCosmos = Color(0xFF370617);
  late Color rosewood = Color(0xFF6A040F);
  late Color pennRed = Color(0xFF9D0208);
  late Color engineeringOrange = Color(0xFFD00000);
  late Color white = Color(0xFFFFFFFF);
  late Color persimmon = Color(0xFFE85D04);
  late Color princetonOrange = Color(0xFFF48C06);
  late Color orangeWeb = Color(0xFFFAA307);
  late Color selectiveYellow = Color(0xFFFFBA08);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Ubuntu';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Ubuntu';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Ubuntu';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Ubuntu';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Ubuntu';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Ubuntu';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Ubuntu';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Ubuntu Condensed';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Ubuntu Condensed';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Ubuntu Condensed';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Ubuntu Condensed';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Ubuntu Condensed';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Ubuntu Condensed';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Ubuntu Condensed';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Ubuntu Condensed';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Ubuntu';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Ubuntu';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Ubuntu';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Ubuntu';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Ubuntu';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Ubuntu';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Ubuntu';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Ubuntu Condensed';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Ubuntu Condensed';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Ubuntu Condensed';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Ubuntu Condensed';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Ubuntu Condensed';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Ubuntu Condensed';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Ubuntu Condensed';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Ubuntu Condensed';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Ubuntu';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Ubuntu';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Ubuntu';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Ubuntu';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Ubuntu';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Ubuntu';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Ubuntu';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Ubuntu',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Ubuntu Condensed';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Ubuntu Condensed';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Ubuntu Condensed';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Ubuntu Condensed';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Ubuntu Condensed';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Ubuntu Condensed';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Ubuntu Condensed';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Ubuntu Condensed';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Ubuntu Condensed',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
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
