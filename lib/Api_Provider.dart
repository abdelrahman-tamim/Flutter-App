import 'package:dio/dio.dart';
import 'package:flutter_application_1/Product_model.dart';

class ApiProvider {
  final baseUrl = "https://dummyjson.com";
  late ProductModel productModel;

  Future<ProductModel> getProducts() async {
    Response response = await Dio().get("$baseUrl/products");
    productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
