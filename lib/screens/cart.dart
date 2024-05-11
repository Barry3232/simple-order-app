
import 'package:flutter/material.dart';

class Cart extends StatelessWidget{
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Cart',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }

}