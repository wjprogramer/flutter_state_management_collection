import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Product extends Equatable {
  Product({
    required this.name,
    required this.price,
    String? id,
  }): id = id ?? Uuid().v4();

  final String id;
  final String name;
  final double price;

  @override
  List<Object?> get props => [
    id,
    name,
    price,
  ];

  Product copyWith({
    String? id,
    String? name,
    double? price,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

}