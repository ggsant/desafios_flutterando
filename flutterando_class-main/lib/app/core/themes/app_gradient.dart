import 'dart:math';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    AppColors.cardBackground,
    AppColors.cardBackground,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
