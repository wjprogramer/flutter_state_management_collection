import 'dart:math';

import 'package:faker/faker.dart';

Faker getFaker() {
  return Faker();
}

extension FakerX on Faker {
  double get price {
    return Random().nextDouble() * 990 + 10;
  }
}