part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class ReloadDisplayNameEvent extends HomeEvent {}

class ReloadImageEvent extends HomeEvent {}
