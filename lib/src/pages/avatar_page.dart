import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya_400x400.jpg'),
              radius: 25.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 25.0,
              child: const Text('SL'),
              backgroundColor: Colors.indigo.shade900,
            ),
          ),
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.cinconoticias.com/wp-content/uploads/Stan-Lee.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 250),
        ),
      ),
    );
  }
}
