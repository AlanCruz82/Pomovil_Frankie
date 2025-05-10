import 'package:flutter/material.dart';
import 'pantallas/principal.dart';  // Asegúrate de que FirstScreen esté correctamente definida
import 'pantallas/segunda.dart';    // Asegúrate de que SecondScreen esté correctamente definida
import 'pantallas/calc.dart';       // Asegúrate de que CalcScreen esté correctamente importada

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> { // widget main screen para navegar entre pantallas
  int _currentIndex = 0;  // Indice inicial
  final List<Widget> _screens = [
    Principal(),  // Asegúrate de que FirstScreen esté bien importada
    Secundaria(), // Asegúrate de que SecondScreen esté bien importada
    Calculadora(),   // Asegúrate de que CalcScreen esté bien importada
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],  // Cargar la pantalla correspondiente al indice
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,  // El índice actual para cambiar la pantalla
        onTap: (index) { // cuando el usuario toca un icono cambiamos el indice
          setState(() { // actualizamos el estado para mostrar la pantalla
            _currentIndex = index;  // Cambiar el índice al hacer clic en un ítem
          });
        },
        items: [ // botones de la app con los cuales vamos a navegar entre pantallas
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Principal"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Geolocalizador"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculadora"),
        ],
      ),
    );
  }
}
