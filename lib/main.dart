import 'package:flutter/material.dart';

void main() {
  runApp(const AppRestaurante());
}

class AppRestaurante extends StatelessWidget {
  const AppRestaurante({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Restaurante Vega",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // Fondo blanco con un pequeño degradado en la parte inferior para los colores italianos
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.white, Colors.red],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.medical_services, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // Columna principal
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Fila 1
              crearFilaConCuadros("Entradas", "Bebidas"),
              // Fila 2
              crearFilaConCuadros("Pastas", "Pizzas"),
              // Fila 3
              crearFilaConCuadros("Postres", "Café"),
            ],
          ),
        ),
      ),
    );
  }

  // Función para no repetir código de las filas
  Widget crearFilaConCuadros(String textoIzq, String textoDer) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                textoIzq,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16), // Espacio entre contenedores
        Expanded(
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                textoDer,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}