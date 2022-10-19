import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.amber[700],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/5795425/pexels-photo-5795425.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
      )),
    );
  }
}
