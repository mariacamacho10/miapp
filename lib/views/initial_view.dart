import 'package:flutter/material.dart'; // Se importa el paquete de Flutter Material (para widget)
import 'package:flutter_bloc/flutter_bloc.dart'; // Se importa BLoc para poder usar BlocProvider y eventos
import 'package:miapp/bloc/home_bloc.dart'; // Se importa para bloc personalizado

// Se declara un widget de tipo StatelessWidget (pantalla sin estado)
class Initial extends StatelessWidget {
  const Initial({super.key}); // Constructor con clave

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Encabezado de la pantalla
      appBar: AppBar(title: const Text('Inicio')),

      // Cuerpo centrado de la pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Se centra verticalmente

          children: [
            const Text('DISNEY PRINCESS'),
                        Image.network(
              'https://i.imgur.com/yieaVn8.png', // Imagen principal
              height: 200, // Ajuste del tamaño de la imagen
              width: 200,
              fit: BoxFit.cover, // Ajuste de cómo se adapta la imagen dentro del contenedor
            ),
            const SizedBox(height: 20), // El espacio entre la imagen y el texto


            const SizedBox(height: 20), // Espaciado vertical

            // Botón elevado (botón de material)
            ElevatedButton(
              onPressed: () {
                // Obtiene la instancia del HomeBloc desde el contexto
                final homeBloc = BlocProvider.of<HomeBloc>(context);

                // Se envia un evento al bloc indicando que se hizo clic en "Buscar"
                homeBloc.add(HomeSearchPressed());
              },
              child: const Text('Entrar'), // Texto del botón
            ),
          ],
        ),
      ),
    );
  }
}