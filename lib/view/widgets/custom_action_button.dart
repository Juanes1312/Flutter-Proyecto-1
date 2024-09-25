import 'package:flutter/material.dart';

class CustomActionButon extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  const CustomActionButon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.teal[200],
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

class SymbolWithLetters extends StatelessWidget {
  const SymbolWithLetters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Tamaño del contenedor
      height: 200,
      child: const Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // El símbolo en el centro
          Text(
            '★', // Aquí puedes cambiar el símbolo
            style: TextStyle(fontSize: 50),
          ),
          // Letra arriba
          Positioned(
            top: 0,
            child: Text(
              'N', // Letra de arriba
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Letra abajo
          Positioned(
            bottom: 0,
            child: Text(
              'S', // Letra de abajo
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Letra a la izquierda
          Positioned(
            left: 0,
            child: Text(
              'W', // Letra de la izquierda
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Letra a la derecha
          Positioned(
            right: 0,
            child: Text(
              'E', // Letra de la derecha
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
