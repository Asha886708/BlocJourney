part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{
  
}
class HomeLoadedSucessState extends HomeState{
  
}

class HomeErrorState extends HomeState{
  
}

class HomeNavigateToWishilistPageActionState extends HomeActionState{
  
}
class HomeNavigateToCartPageActionState extends HomeActionState{}

