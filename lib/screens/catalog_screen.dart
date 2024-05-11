import 'package:flutter/material.dart';

import 'cart.dart';

class CatalogScreen extends StatelessWidget{
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ListTile(
            leading: Container(
              color: Colors.orange,
              height: 80,
              width: 65,
            ),
            title: const Text('Code Smell',
            style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

         const SizedBox(
        height: 25,
      ),

          ListTile(
            leading: Container(
              color: Colors.pink,
              height: 80,
              width: 65,
            ),
            title: const Text('Control Flow',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.purple,
              height: 80,
              width: 65,
            ),
            title: const Text('Interpreter',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.blueAccent,
              height: 80,
              width: 65,
            ),
            title: const Text('Recursion',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.blue,
              height: 80,
              width: 65,
            ),
            title: const Text('Sprint',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.lightBlue,
              height: 80,
              width: 65,
            ),
            title: const Text('Heisenbug',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 65,
            ),
            title: const Text('Spaghetti',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.brown,
              height: 80,
              width: 65,
            ),
            title: const Text('Hydra Code',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.green,
              height: 80,
              width: 65,
            ),
            title: const Text('Off-By-One',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),

          const SizedBox(
            height: 25,
          ),

          ListTile(
            leading: Container(
              color: Colors.greenAccent,
              height: 80,
              width: 65,
            ),
            title: const Text('Block',
              style: TextStyle(fontSize: 20),),
            trailing: const Text('Add',style: TextStyle(fontSize: 12),),
          ),
        ],
      ),




    );
  }

}