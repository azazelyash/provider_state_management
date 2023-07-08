import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    log("SliderScreen built");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slider Screen'),
      ),
      body: Consumer<SliderProvider>(
        builder: (context, sliderProvider, child) {
          return Column(
            children: [
              Slider(
                min: 0,
                max: 1,
                value: sliderProvider.getValue,
                onChanged: (val) {
                  log(val.toString());
                  sliderProvider.setValue(val);
                },
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.red.withOpacity(sliderProvider.getValue),
              ),
            ],
          );
        },
      ),
    );
  }
}
