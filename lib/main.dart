import 'package:flutter/material.dart'; // Se importa los widgets básicos de Flutter
import 'package:flutter_bloc/flutter_bloc.dart'; // Se importa BLoc para manejar estados
import 'package:miapp/bloc/home_bloc.dart'; // Se importa el archivo del BLoc personalizado
import 'package:miapp/views/failure_view.dart'; // La vista para cuando hay error
import 'package:miapp/views/initial_view.dart'; // La vista inicial
import 'package:miapp/views/loading_view.dart'; // La vista mientras carga
import 'package:miapp/views/success_view.dart'; //La vista cuando cargue correctamente

void main() => runApp(MyApp()); // La función principal que corre la app con MyApp

class MyApp extends StatelessWidget { // Crea una clase de widget sin estado
  @override
  Widget build(BuildContext context) { // Un metodo que construye la interfaz
    return BlocProvider( // Proveedor de BLoc para manejar el estado de la app
      create: (context) => HomeBloc(), // Crea una instancia del BLoc
      child: MaterialApp( // Widget principal de la app
        debugShowCheckedModeBanner: false, // Oculta la etiqueta de "debug" en la esquina
        title: 'My APP', // Título de la app
        home: BlocBuilder<HomeBloc, HomeState>( // Escucha y construye según el estado del BLoc
          builder: (context, state) { // La función que construye según el estado actual
            if (state is HomeLoadSuccess) { // Si el estado es éxito
              return Success(); // Muestra la vista
            } else if (state is HomeLoadInProgress) { // Si el estado es cargando
              return Loading(); // Muestra la vista de carga
            } else if (state is HomeLoadFailure) { // Si el estado es error
              return Failure(); // Muestra la vista de error
            }
            return Initial(); // Si no hay estado, muestra la vista inicial
          },
        ),
      ),
    );
  }
}