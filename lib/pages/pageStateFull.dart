import 'package:flutter/material.dart';

class PageStateFull extends StatefulWidget {
  final String texto;
  
  const PageStateFull(this.texto, {Key? key}) : super(key: key);

  @override
  State<PageStateFull> createState() => _PageStateFullState();
}

class _PageStateFullState extends State<PageStateFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("StateFull")),
      body: Center(
        child: Text(widget.texto), 
      ),
    );
  }
}
