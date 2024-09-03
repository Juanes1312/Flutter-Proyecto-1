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
