// Importa el paquete de Flutter Material (para widgets visuales)
import 'package:flutter/material.dart';
// Importa BLoC para poder usar BlocProvider y eventos
import 'package:flutter_bloc/flutter_bloc.dart';
// Importa tu Bloc personalizado
import 'package:miapp/bloc/home_bloc.dart';

// Declaras un widget de tipo StatelessWidget (pantalla sin estado interno)
class Initial extends StatelessWidget {
  const Initial({super.key}); // Constructor con clave opcional

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Encabezado de la pantalla
      appBar: AppBar(title: const Text('Inicio')),

      // Cuerpo centrado en pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente

          children: [
            const Text('Pantalla Inicial'), // Texto principal

            const SizedBox(height: 20), // Espaciado vertical

            // Botón elevado (botón material)
            ElevatedButton(
              onPressed: () {
                // Obtiene la instancia del HomeBloc desde el contexto actual
                final homeBloc = BlocProvider.of<HomeBloc>(context);

                // Envía un evento al bloc para indicar que se hizo clic en "Buscar"
                homeBloc.add(HomeSearchPressed());
              },
              child: const Text('Buscar Productos'), // Texto del botón
            ),
          ],
        ),
      ),
    );
  }
}

