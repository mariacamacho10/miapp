import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildImageCard('https://i.imgur.com/fTX0GrV.jpeg'),
                  const SizedBox(width: 20),
                  _buildImageCard('https://i.imgur.com/EWZqxZs.jpeg'),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildImageCard('https://i.imgur.com/LRJWi4N.jpeg'),
                  const SizedBox(width: 20),
                  _buildImageCard('https://i.imgur.com/pdjuZOD.jpeg'),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          imageUrl,
          height: 200,
          width: 200,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              height: 200,
              width: 200,
              color: Colors.grey[200],
              child: const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}