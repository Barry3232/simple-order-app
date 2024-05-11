

import 'package:flutter/material.dart';

import 'screens/catalog_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)
                ,),
              const Padding(
                  padding: EdgeInsets.only(left: 65, right: 65),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)
                      ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)
                    )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 65, right: 65),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow)
                      )
                  ),
                ),),
             const SizedBox(
               height: 20,
             ),
              ElevatedButton(
               onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return const CatalogScreen();
               })),
                  style: ElevatedButton.styleFrom(
                    // foregroundColor: Colors.red,
                    backgroundColor: Colors.yellow
                  ),
               child: const Text('Enter'))
            ],
          )
      ),

    );
  }

}
