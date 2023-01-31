part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishlist extends WishlistEvent {}

class AddProduct extends WishlistEvent {
  final Product product;
  const AddProduct({required this.product});
  @override
  List<Object> get props => [product];
}

class RemoveProduct extends WishlistEvent {
  final Product product;
  const RemoveProduct({required this.product});
  @override
  List<Object> get props => [product];
}
