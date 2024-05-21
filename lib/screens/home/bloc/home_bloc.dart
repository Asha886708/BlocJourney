import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_journey/data/grocery_data.dart';
import 'package:bloc_journey/screens/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeproductWishlistButtonNavigateEvent>(
        homeproductWishlistButtonNavigateEvent);
    on<HomeproductCartButtonNavigateEvent>(homeproductCartButtonNavigateEvent);
    on<HomeproductWishlistButtonClickedEvent>(
        homeproductWishlistButtonClickedEvent);
    on<HomeproductCartButtonClickedEvent>(homeproductCartButtonClickedEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    try {
      emit(HomeLoadedSucessState(
        products: GroceryData.products.map((e) => ProductDataModel(
            id: e['id'],
            name: e['name'],
            description: e['description'],
            price: e['price'],
            imgUrl: e['imageUrl'])).toList()));
    } catch (e) {
      print(e.toString());
      emit(HomeErrorState());
    }
  }

  FutureOr<void> homeproductWishlistButtonNavigateEvent(
      HomeproductWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToWishilistPageActionState());
  }

  FutureOr<void> homeproductCartButtonNavigateEvent(
      HomeproductCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeproductWishlistButtonClickedEvent(
      HomeproductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeproductCartButtonClickedEvent(
      HomeproductCartButtonClickedEvent event, Emitter<HomeState> emit) {}
}
