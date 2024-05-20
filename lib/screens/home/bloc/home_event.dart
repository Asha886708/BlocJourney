part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeproductWishlistButtonClickedEvent extends HomeEvent{

}

class HomeproductCartButtonClickedEvent extends HomeEvent{
  
}

class HomeproductWishlistButtonNavigateEvent extends HomeEvent{
  
}

class HomeproductCartButtonNavigateEvent extends HomeEvent{
  
}