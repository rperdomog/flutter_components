import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          title: Text('Titulo card'),
          subtitle: Text('Lorem ipsum onwoncosnd'),
          leading: Icon(
            Icons.photo_album,
            color: AppTheme.primary,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {
                  print('Cancel');
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                  onPressed: () {
                    print('ok');
                  },
                  child: const Text('ok')),
            ]))
      ],
    ));
  }
}
