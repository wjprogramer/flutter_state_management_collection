import 'dart:math';

import 'package:simple_demo/share/core/utils/utils.dart';
import 'package:simple_demo/share/data/models/models.dart';

List<Product> generateProducts(int length) {
  final faker = getFaker();

  return List.generate(length, (index) => Product(
    name: faker.food.dish(),
    price: faker.price,
  ));
}

Future<List<Product>> asyncGenerateProducts(int length) async {
  final waitMilliseconds = Random().nextInt(1800) + 200;
  await Future.delayed(Duration(milliseconds: waitMilliseconds));
  return generateProducts(length);
}