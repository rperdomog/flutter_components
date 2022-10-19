import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              nameImg: 'Hermosas montanas',
              imageUrl:
                  'https://images.pexels.com/photos/1036660/pexels-photo-1036660.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/247599/pexels-photo-247599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            SizedBox(height: 20),
            CustomCardType2(
                nameImg: 'Linda imagen',
                imageUrl:
                    'https://images.pexels.com/photos/2521619/pexels-photo-2521619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            SizedBox(height: 100),
          ],
        ));
  }
}
