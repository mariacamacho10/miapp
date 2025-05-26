part of 'home_bloc.dart'; // Indica que este archivo es parte de home_bloc.dart

sealed class HomeState extends Equatable { // La clase base para los estados del BLoc
  const HomeState(); // Constructor constante

  @override
  List<Object> get props => []; // Permite comparar estados (requerido por Equatable)
}

final class HomeInitial extends HomeState {} // El estado inicial, antes de hacer algo
final class HomeLoadInProgress extends HomeState{} // El estado mientras está cargando
final class HomeLoadSuccess extends HomeState{} // El estado cuando carga con éxito
final class HomeLoadFailure extends HomeState{} // El estado cuando falla la carga