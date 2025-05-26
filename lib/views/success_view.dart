import 'package:flutter/material.dart'; // Se importa el paquete de widget de Flutter

class Success extends StatelessWidget { // Se crea una clase de tipo StatelessWidget llamada Success
  const Success({super.key}); // El constructor de la clase con clave

  @override
  Widget build(BuildContext context) { // Un metodo que construye la interfaz
    return Scaffold( // La estructura básica de pantalla
      backgroundColor: Colors.grey[100], // Fondo gris claro para la pantalla
      body: Center( // Centra todo el contenido
        child: Padding( // Se agrega espacio alrededor del contenido
          padding: const EdgeInsets.all(20.0), // Un espacio de 20 en todos los lados
          child: Column( // Se coloca los elementos uno debajo del otro
            mainAxisAlignment: MainAxisAlignment.center, // Se centra verticalmente los elementos
            children: [
              Row( // La fila para las dos primeras imágenes
                mainAxisAlignment: MainAxisAlignment.center, // Se centra horizontalmente los elementos
                children: [
                  _buildImageCard( // Se muestra la primera tarjeta de la imagen
                    'https://i.imgur.com/Un7xj3U.png', // URL de la imagen "Bella"
                    'Bella', // Nombre que se mostrara debajo
                  ),
                  const SizedBox(width: 20), // El espacio horizontal entre las imágenes
                  _buildImageCard( // Segunda tarjeta de la imagen
                    'https://i.imgur.com/ceUf9aI.png', // URL de la imagen "Cenicienta"
                    'Cenicienta', // Nombre de la princesa
                  ),
                ],
              ),
              const SizedBox(height: 20), // El espacio vertical entre filas
              Row( // Segunda fila de imágenes
                mainAxisAlignment: MainAxisAlignment.center, // Se centra horizontalmente
                children: [
                  _buildImageCard( // Tercera tarjeta de la imagen
                    'https://i.imgur.com/7VcD020.png', // URL de la imagen "Rapunzel"
                    'Rapunzel', // Nombre de la princesa
                  ),
                  const SizedBox(width: 20), // El espacio entre las imágenes
                  _buildImageCard( // Cuarta tarjeta de la imagen
                    'https://i.imgur.com/2wr2hKE.png', // URL de la imagen "Blancanieves"
                    'Blancanieves', // Nombre de la princesa
                  ),
                ],
              ),
              const SizedBox(height: 40), // El espacio final al final de la columna
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String imageUrl, String name) { // La función que crea la tarjeta con imagen y nombre
    return Column( // Coloca imagen y texto uno debajo del otro
      children: [
        Container( // Contenedor para la imagen con estilos
          decoration: BoxDecoration( // Decoración del contenedor
            color: Colors.blueGrey, // Color de fondo
            borderRadius: BorderRadius.circular(12), // Los bordes redondeados
            boxShadow: [ // Sombra alrededor del contenedor
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Color de sombra suave
                spreadRadius: 2, // Que tanto se puede expandir la sombra
                blurRadius: 5, // Qué tan difuminada puede ser la sombra
                offset: const Offset(0, 3), // La dirección de la sombra (hacia abajo)
              ),
            ],
          ),
          child: ClipRRect( // Esto recorta los bordes redondeados de la imagen
            borderRadius: BorderRadius.circular(12), // Esto hace que los bordes redondeados sean igual que el contenedor
            child: Image.network( // Muestra la imagen desde internet
              imageUrl, // La URL que se pasó como parámetro
              height: 200, // Alto para la imagen
              width: 200, // Ancho para la imagen
              fit: BoxFit.cover, // Ajusta la imagen para que llene todo el espacio
              loadingBuilder: (context, child, loadingProgress) { // Muestra de carga mientras se descarga
                if (loadingProgress == null) return child; // Si ya cargo, muestra la imagen
                return Container( // Si esta cargando, muestra un contenedor con animación
                  height: 200, // Alto igual de la imagen
                  width: 200, // Ancho igual de la imagen
                  color: Colors.grey[200], // Fondo gris claro mientras carga
                  child: const Center(child: CircularProgressIndicator()), // Esto muestra el círculo de carga
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 8), // Espacio entre la imagen y el texto
        Text( // Muestra el nombre de la princesa
          name, // Nombre que se pasó como parámetro
          style: const TextStyle( // El estilo del texto
            fontSize: 16, // El tamaño del texto
            fontWeight: FontWeight.w600, // El grosor medio del texto
          ),
        ),
      ],
    );
  }
}