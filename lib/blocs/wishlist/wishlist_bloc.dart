import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/product_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<StartWishlist>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(const WishlistLoaded(products: <Product>[]));
    });
    on<AddProduct>((event, emit) async {
      if (state is WishlistLoaded) {
        final state = this.state as WishlistLoaded;
        emit(
          WishlistLoaded(
            products: List.from(state.products)..add(event.product),
          ),
        );
      }
    });
    on<RemoveProduct>((event, emit) async {
      if (state is WishlistLoaded) {
        final state = this.state as WishlistLoaded;
        emit(
          WishlistLoaded(
            products: List.from(state.products)..remove(event.product),
          ),
        );
      }
    });
  }
}
