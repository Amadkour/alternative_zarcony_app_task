part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartLoaded extends CartState {}
class QuantityChanged extends CartState {}
