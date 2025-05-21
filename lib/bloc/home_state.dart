part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props =>[];
}

final class HomeInitial extends HomeState {}

final class HomeLoadInProgress extends HomeState {}

final class HomeLoadSuccess extends HomeState {
 
}

final class HomeLoadFailure extends HomeState {
  final String error;
  HomeLoadFailure(this.error);
}