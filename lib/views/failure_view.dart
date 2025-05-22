
import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [ 
          Icon(
                  Icons.report_gmailerrorred,
                  size: 50,
                  color: Color.fromARGB(255, 250, 244, 224),

                  shadows: [ 
                    Shadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
          Text('error')
        ],
      ),),
    );
  }
}
