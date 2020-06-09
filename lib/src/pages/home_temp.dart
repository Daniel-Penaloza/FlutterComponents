import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createItemsShort()
      ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)
          ..add( Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort(){
      return options.map((String item){
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item + '!'),
              subtitle: Text('This is the subtitle'),
              leading: Icon(Icons.all_out),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            Divider(),
          ],
        );
      }).toList();
  }
}