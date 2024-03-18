import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'dummy.g.dart';

@JsonSerializable()
class Dummy {
  List<Product>? products;
  int? total;
  int? skip;
  int? limit;

  Dummy({this.products, this.total, this.skip, this.limit});

  factory Dummy.fromJson(Map<String, dynamic> json) => _$DummyFromJson(json);

  Map<String, dynamic> toJson() => _$DummyToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Dummy) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      products.hashCode ^ total.hashCode ^ skip.hashCode ^ limit.hashCode;
}
