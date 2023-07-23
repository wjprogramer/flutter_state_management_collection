import 'package:uuid/uuid.dart';

class Product {
  Product({
    required this.name,
    required this.price,
  }): id = Uuid().v4();

  final String id;
  final String name;
  final double price;
}