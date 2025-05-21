import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Centra los elementos horizontalmente
          children: [
            // Muestra la imagen desde la web
            Image.network(
              'https://scontent-bog2-1.xx.fbcdn.net/v/t1.6435-9/102556074_150778366498518_3559807502109376512_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=2285d6&_nc_eui2=AeHxpxfW0qxBY6HOnqaJ9LOHHPrwtZQjX70c-vC1lCNfvWDTfwJ4B3GKY5tX5LtMLoFEKeyf9KvDOhA82XAViB6X&_nc_ohc=3KJDo09S42cQ7kNvwERO3Yo&_nc_oc=AdkF4mQaLOr8nmLN9mysmaqOyH9PpfzApJgbEpJv5rbbrexFdWh5zPnQZ7RT_zluxCM&_nc_zt=23&_nc_ht=scontent-bog2-1.xx&_nc_gid=SLOYTdMK8wp6k8k5FjYmow&oh=00_AfIjGQseU4cIEndcyNQpSwtr1Javyx1nljUwBiDXBw053g&oe=68557CB2', // Cambia esta URL por la de tu imagen
              height: 200, // Puedes ajustar el tamaño de la imagen
              width: 200,
              fit: BoxFit.cover, // Ajusta cómo se adapta la imagen dentro del contenedor
            ),
            const SizedBox(height: 20), // Espacio entre la imagen y el texto
            const Text(
              'Success',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
