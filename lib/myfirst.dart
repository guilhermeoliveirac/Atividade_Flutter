import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MeuWidget extends StatefulWidget {
  const MeuWidget({super.key});

  @override
  State<MeuWidget> createState() => _MeuWidgetState();
}

class _MeuWidgetState extends State<MeuWidget> {
    var i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEU APP'),
        leading: Icon(Icons.menu),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          i++;
          });
          print('PRESSIONADO');},
        child: Icon(Icons.leak_remove),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              child: Text(
                i.toString()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
