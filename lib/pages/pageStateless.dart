import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget {
  final String texto;
  
  const PageStateless(this.texto, {Key? key}) : super(key: key); 

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Stateless page"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(texto),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); 
            },
            child: const Text("Volver"),
          ),
        ],
      ),
    ),
  );
 }
}
