part of 'home_bloc.dart'; // Indica que este archivo es parte del archivo home_bloc.dart

sealed class HomeEvent extends Equatable { // La clase base para los eventos del BLoc
  const HomeEvent(); // Constructor constante

  @override
  List<Object> get props => []; // Es necesario para comparar eventos (requerido por Equatable)
}

final class HomeSearchPressed extends HomeEvent{} // Evento específico: cuando se presiona buscar