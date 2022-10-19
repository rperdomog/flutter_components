import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Resident Evil',
    'Final Fantasy'
  ];

  const ListViewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
          ],
        ));
  }
}
