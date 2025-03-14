import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Provider.dart';
import 'package:flutter_application_1/Product_model.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial()) {
    getProducts();
  }
  ProductModel? productModel;
  getProducts() async {
    try {
      emit(ProductsLoading());
      productModel = await ApiProvider().getProducts();
      emit(ProductsSucsses(productModel));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }
}
