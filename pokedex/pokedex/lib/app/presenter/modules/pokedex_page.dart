import 'package:flutter/material.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Sejam Bem Vindos!!!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Flutterando',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Desafios',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Image.asset('assets/gif/pi.gif')
      ],
    );
  }
}
