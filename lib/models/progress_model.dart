import 'package:flutter/material.dart';

import '../data/data.dart';

class ProgressModel {
  late final int number;
  late final String label;
  late final PromoStatus status;
  late final Color color;

  ProgressModel({
    required this.number,
    required this.label,
    required this.status,
    required this.color,
  });
}
