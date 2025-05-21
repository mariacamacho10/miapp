import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key}); // Constructor del widget sin estado

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Fondo blanco por defecto
      body: Center(
        // Centra todo en el eje vertical y horizontal
        child: Column(
          mainAxisSize: MainAxisSize.min, // Solo ocupa lo necesario 
          mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
          crossAxisAlignment: CrossAxisAlignment.center, // Centrado horizontal
          children: [
            CircularProgressIndicator(), // ICONO de carga
            SizedBox(height: 20), // Espacio entre el ícono y el texto
            Text(
              'Cargando...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
