part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsSucsses extends ProductsState {
  ProductModel? productModel;
  ProductsSucsses(this.productModel);
}

final class ProductsError extends ProductsState {
  String Error;
  ProductsError(this.Error);
}
