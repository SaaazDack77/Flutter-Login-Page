

import 'package:flutter/material.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    TextEditingController unameController = TextEditingController();
    
    TextEditingController passwordController = TextEditingController();
    
    return MaterialApp(
      title: 'Login Page',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Login",
              style: TextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),
            ),
    
    
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
    
                    'SİGN OKAN APP',
    
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                        fontSize: 30
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: unameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'USERNAME'
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD'
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('LOGIN NOW'),
                    onPressed: (){
                      print(unameController.text);
                      print(passwordController.text);
                    },
                  ),
                )


              ],
            ),

          )
      ),
    );
  }
}
