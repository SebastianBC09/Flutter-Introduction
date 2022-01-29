import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _cardType1(),
        ],
      ),
    );
  }

  _cardType1() {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.card_travel, color: Colors.blueGrey),
            title: Text('Cart Type 1'),
            subtitle: Text(
                'Bienvenido a mi curso introductorio de Flutter en español, el cual tiene por objetivo enseñarte las bases sobre el lenguaje de Dart y el Flutter SDK.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
