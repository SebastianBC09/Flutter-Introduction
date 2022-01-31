import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => const AlertPage(),
        );
      },
    );
  }
}
