import 'dart:math' as math;

import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);

  TextTheme get tt => Theme.of(this).textTheme;

  ColorScheme get cs => Theme.of(this).colorScheme;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double topPadding([double topPadding = 15]) =>
      math.max(statusBarHeight + topPadding, topPadding);

  double bottomPadding([double bottomPadding = 15]) =>
      math.max(bottomSafeHeight + bottomPadding, bottomPadding);

  double get statusBarHeight => MediaQuery.of(this).viewPadding.top;

  double get bottomSafeHeight => MediaQuery.of(this).viewPadding.bottom;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
}
