import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:takeaway_app/domain/models/dummy/product.dart';

class DummyService {
  
  static Future<List<Product>> getProducts() async {
    Uri url = Uri.parse('https://dummyjson.com/products?limit=10&skip=10');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    List data = json.decode(response.body)['products'];
    return data.map((e) => Product.fromJson(e)).toList();
  }
}
