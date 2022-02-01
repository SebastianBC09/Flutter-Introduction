import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const StadiumBorder()),
            backgroundColor:
                MaterialStateProperty.all(Colors.indigoAccent.shade700),
          ),
          onPressed: () => _showAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('🚨Alert Title🚨'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is the content of the alert box!'),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
