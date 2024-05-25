import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/models/shopmodel.dart';

import '../provider/shopProvider.dart';
import 'cart.dart';

List<ShopModel> catalog = [
  ShopModel(color: Colors.orange, title: 'Code Smell'),
  ShopModel(color: Colors.pink, title: 'Control Flow'),
  ShopModel(color: Colors.purple, title: 'Interpreter'),
  ShopModel(color: Colors.blue, title: 'Recursion'),
  ShopModel(color: Colors.blueAccent, title: 'Sprint'),
  ShopModel(color: Colors.blueAccent, title: 'Heisenbug'),
  ShopModel(color: Colors.blueGrey, title: 'Spaghetti'),
  ShopModel(color: Colors.brown, title: 'Hydra Code'),
  ShopModel(color: Colors.green, title: 'Off-By-One'),
  ShopModel(color: Colors.greenAccent, title: 'Block'),
];

class CatalogScreen extends ConsumerStatefulWidget{
  const CatalogScreen({super.key});

  @override
  ConsumerState<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends ConsumerState<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = ref.watch(shopProvider);
    return PopScope(
      onPopInvoked: (_){

      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Center(
            child: Text('Catalog',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
          ),
          actions: [InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Cart();}));
              },
              child: const Icon(Icons.shopping_cart)),
            const SizedBox(
            width: 10,
          )],
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),

            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i)=>
                InkWell(
                  onTap: (){
                    catalog[i].isAdded = !catalog[i].isAdded;

                    if( !catalog[i].isAdded){
                      cartProvider.removeFromCart(title: catalog[i].title);
                    }else{
                      cartProvider.addToCart(title: catalog[i].title, color: catalog[i].color);
                    }

                    setState((){});
                  },
                    child: listTileHolder(catalog[i])), separatorBuilder: (context, index)=>  const SizedBox(
              height: 25,
            ), itemCount: catalog.length)


          ],
        ),




      ),
    );
  }

  Widget listTileHolder(ShopModel shopper){
    return ListTile(
      leading: Container(
        color: shopper.color,
        height: 80,
        width: 65,
      ),
      title:  Text(shopper.title,
        style: const TextStyle(fontSize: 20),),
      trailing: shopper.isAdded
          ? const Icon(Icons.check)
          :const Text( 'Add',style: TextStyle(fontSize: 12),),
    );
  }
}