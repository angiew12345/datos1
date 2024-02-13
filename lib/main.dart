import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar de chavito'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: TextField(
              controller: _textoController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[300],
                filled: true,
                hintText: "Ingresas información",
              ),
            ),
          ),
          TextField(),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageStateless(_textoController.text),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text("Ir a la página uno"),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageStateFull(_textoController.text),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text("Enviar a Statefull"),
          ),
        ],
      ),
    );
  }
}

class PageStateless extends StatelessWidget {
  final String text;

  PageStateless(this.text);

  @override
  Widget build(BuildContext context) {
    // Your PageStateless widget content here
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Stateless'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}

class PageStateFull extends StatelessWidget {
  final String text;

  PageStateFull(this.text);

  @override
  Widget build(BuildContext context) {
    // Your PageStateFull widget content here
    return Scaffold(
      appBar: AppBar(
        title: Text('Page StateFull'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
