part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final List<Product> products;

  const WishlistLoaded({required this.products});

  @override
  List<Object> get props => [products];
}

class WishlistError extends WishlistState {}
