import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Resident Evil',
    'Final Fantasy'
  ];

  const ListView2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: ((contex, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo),
                onTap: () {
                  final game = options[index];
                  print(game);
                },
              )),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
