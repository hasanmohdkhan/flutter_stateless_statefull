import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.pink[400],
      ),
      body: Center(
          child: Text('Details here\n $_count',
              style: Theme.of(context).textTheme.headline6)),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCount,
        /*() {
         // Navigator.pop(context);
        }*/
        tooltip: 'back',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.pink[900],
      ),
    );

    return scaffold;
  }
}
