import 'package:bloc/bloc.dart'; // Se importa la librería BLoC para manejar estados
import 'package:equatable/equatable.dart'; // Permite comparar objetos fácilmente
import 'package:http/http.dart' as http; // La librería para hacer peticiones HTTP

part 'home_event.dart'; // Se importa el archivo con los eventos del BLoc
part 'home_state.dart'; // Se importa el archivo con los estados del BLoc

class HomeBloc extends Bloc<HomeEvent, HomeState> { // Se crea el BLoc que maneja eventos y estados
  HomeBloc() : super(HomeInitial()) { // Inicia con el estado inicial
    on<HomeEvent>((event, emit) async { // Escucha cualquier evento
      emit(HomeLoadInProgress()); // Cambia el estado a "cargando"
      final url = Uri.parse('https://jsonplaceholder.typicode.com/users/1'); // URL de la API
      final response = await http.get(url); // Hace la petición GET
      if (response.statusCode == 200) { // Si la respuesta fue exitosa
        emit(HomeLoadSuccess()); // Cambia el estado a "éxito"
      } else { // Si hubo error en la respuesta
        emit(HomeLoadFailure()); // Cambia el estado a "fallo"
      }
    });
  }
}