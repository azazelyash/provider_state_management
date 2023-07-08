import 'package:flutter/material.dart';
import 'package:provider_practice/selection_button/selection_button_ui.dart';
// import 'package:provider_practice/slider_screen/slider_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const SliderScreen(),
                  //   ),
                  // );
                },
                child: const Text("Slider Example"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SelectionButtonPage(),
                    ),
                  );
                },
                child: const Text("Selection Buttom Example"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
