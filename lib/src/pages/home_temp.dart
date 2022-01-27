import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Title'),
      ),
      body: ListView(
          // children: _createList(),
          // children: _createListShort(),
          ),
    );
  }

  //Forma comun, clasica  de crear un ListTile
  List<Widget> _createList() {
    List<Widget> list = <Widget>[];
    for (var opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list
        ..add(tempWidget)
        ..add(const Divider(
          color: Colors.indigo,
          thickness: 1.5,
        ));
    }
    return list;
  }

  //Forma corta de crear un ListTile usando
  List<Widget> _createListShort() {
    var widget = options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: const Text('Numeros Cardinales'),
            leading: const Icon(CupertinoIcons.suit_spade_fill),
            trailing: const Icon(CupertinoIcons.square_arrow_right),
            onTap: () {},
            tileColor: Colors.lightBlue.shade50,
          ),
          Divider(
            color: Colors.deepPurple.shade800,
            thickness: 2.0,
          ),
        ],
      );
    }).toList();
    return widget;
  }
}
