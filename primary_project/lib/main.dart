import 'package:flutter/material.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bill Gates'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Image.network(
              'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/Reuters_Direct_Media/BrazilOnlineReportTechnologyNews/tagreuters.com2023binary_LYNXMPEJ330OI-FILEDIMAGE.jpg?w=876&h=484&crop=1',
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bill Gates'),
                        Text('Seattle, Washington, EUA')
                      ],
                    ),
                  ),
                  Text('CEO DA MICROSOFT')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Button(
                    onPress: () {},
                    icon: Icons.call,
                    text: 'Ligar',
                  ),
                  Button(
                    onPress: () {},
                    icon: Icons.map,
                    text: 'Localização',
                  ),
                  Button(
                    onPress: () {},
                    icon: Icons.share,
                    text: 'Compartilhar',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final IconData icon;

  const Button({
    Key? key,
    required this.text,
    required this.onPress,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TextButton(
            onPressed: onPress,
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.blueGrey,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
