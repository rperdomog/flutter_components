import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 100,
          max: 500,
          // divisions: 10,
          activeColor: AppTheme.primary,
          value: _sliderValue,
          onChanged: _sliderEnabled
              ? (value) {
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
        ),
        // Checkbox(
        //     value: _sliderEnabled,
        //     onChanged: (value) {
        //       _sliderEnabled = value ?? true;
        //       setState(() {});
        //     }),

        CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Activate slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),

        SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Activate slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        const AboutListTile(),
        Expanded(
            child: SingleChildScrollView(
          child: Image(
            image: const NetworkImage(
                'https://images.unsplash.com/photo-1643439766762-b3731e689f83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'),
            fit: BoxFit.contain,
            width: _sliderValue,
          ),
        ))
      ]),
    );
  }
}
