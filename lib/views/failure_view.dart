import 'package:flutter/material.dart'; // Se importa los widgets de Flutter

class Failure extends StatelessWidget { // Se crea un widget sin estado llamado Failure
  const Failure({ // Constructor constante de la clase
    super.key, // Clave para el widget
  });

  @override
  Widget build(BuildContext context) { // Metodo que construye la interfaz
    return Scaffold( // Estructura de pantalla básica
      body: Center( // Centra el contenido en la pantalla
        child: Column( // Organiza los widgets uno debajo del otro
          children: [ 
            Icon( // Muestra un ícono
              Icons.report_gmailerrorred, // Ícono de error
              size: 50, // Tamaño del ícono
              color: Color.fromARGB(255, 250, 244, 224), // Color del ícono en tono claro

              shadows: [ // Aplica una sombra al ícono
                Shadow(
                  color: Colors.black.withOpacity(0.1), // Color de sombra con baja opacidad
                  blurRadius: 1, // Difuminado suave
                  offset: Offset(3, 3), // Desplaza la sombra hacia la esquina inferior derecha
                ),
              ],
            ),
            Text('error') // Texto que dice "error"
          ],
        ),
      ),
    );
  }
}