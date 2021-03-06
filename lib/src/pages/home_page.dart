import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Components!'),
      ),
      body: _list(),
          );
  }
  
  Widget _list() {
      return ListView(
        children: _itemList(),
      );
  }

  List<Widget> _itemList(){
    return [
      ListTile(title: Text('Hello World!')),
      Divider(),
      ListTile(title: Text('Hello World!')),
      Divider(),
      ListTile(title: Text('Hello World!')),
    ];
  }

}