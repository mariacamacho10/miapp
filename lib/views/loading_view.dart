import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key}); // Constructor de widget

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        // Centra todo en eje vertical y horizontal
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
