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
          const SizedBox(
            height: 30.0,
          ),
          _cardType2(),
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

  _cardType2() {
    return Card(
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20180522150455/lake-baikal-summer.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // const Image(
          //   image: NetworkImage(
          //       'https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20180522150455/lake-baikal-summer.jpg'),
          // ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
                'Nota: Debido a políticas de Udemy, este curso no se puede actualizar porque es un curso gratis de más de dos horas'),
          ),
        ],
      ),
    );
  }
}
