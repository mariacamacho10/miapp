
import 'package:flutter/material.dart';

class success extends StatelessWidget {
  const success({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //creo una columna para que se ponga uno debajo de otro
            Text('Succes')
          ],
        ),
      ),
    );
  }
}
