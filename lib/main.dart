
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/provider/shopProvider.dart';

import 'screens/catalog_screen.dart';

void main() {
  runApp(const ProviderScope(child:MyApp() ) );
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


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey  = GlobalKey<FormState>();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passWordController = TextEditingController();

  void onEnter(){
   final _isValidate = _formKey.currentState?.validate();
   if(!_isValidate!)return;
   Navigator.of(context).push(MaterialPageRoute(builder: (context){
     return const CatalogScreen();
   }
   ));
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Welcome',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)
                  ,),
                 Padding(
                    padding:const EdgeInsets.only(left: 65, right: 65),
                  child: TextFormField(
                    controller: _userNameController,
                    validator: (_){
                      if(_userNameController.text.isEmpty){
                        return "UserName is required to continue";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(

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
                 Padding(
                  padding: const EdgeInsets.only(left: 65, right: 65),
                  child: TextFormField(
                    controller: _passWordController,
                    obscureText: true,
                    validator: (_){
                      if(_passWordController.text.length < 5){
                        return "Password is too short";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
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
                 onPressed: onEnter,
                    style: ElevatedButton.styleFrom(
                      // foregroundColor: Colors.red,
                      backgroundColor: Colors.yellow
                    ),
                 child: const Text('Enter'))
              ],
            ),
          )
      ),

    );
  }
}
