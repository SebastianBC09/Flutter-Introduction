import 'package:flutter/material.dart';
import 'package:componentes/src/provider/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes!'),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _createItemList(snapshot.data ?? [], context),
          );
        });
  }

  List<Widget> _createItemList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    for (var element in data) {
      final tempWidget = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.lime.shade500,
        ),
        onTap: () {
          final route = MaterialPageRoute(
            builder: (context) {
              return const AlertPage();
            },
          );
          Navigator.push(context, route);
        },
      );
      options
        ..add(tempWidget)
        ..add(const Divider(
          color: Colors.cyan,
        ));
    }

    return options;
  }
}
