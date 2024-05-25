
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../provider/shopProvider.dart';

class Cart extends ConsumerWidget{
  const Cart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(shopProvider).shopList;
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Cart',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        ),
      ),
      body: ListView.builder(

        itemBuilder: (context, index){
        return Text(cartList[index].title);
      } ,itemCount: cartList.length, ),
    );
  }

}