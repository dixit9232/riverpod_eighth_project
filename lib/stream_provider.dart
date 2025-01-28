import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider<double>((ref) async* {
  final random = Random();
  double currentPrice = 1000.0;

  while (true) {
    currentPrice += random.nextDouble() * 4 - 2;
    yield currentPrice.toDouble();
  }
});
