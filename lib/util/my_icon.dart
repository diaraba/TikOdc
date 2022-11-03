import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final icon;
  final String nombre;
  MyIcon({this.icon, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0), 
            child:Column(
                children: [
                  Icon(icon, size: 40,),
                  SizedBox(
                    height: 10,
                      ),
                  Text(nombre),   
                  ],
  ),
    );
  }
}
