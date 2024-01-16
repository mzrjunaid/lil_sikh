import 'package:flutter/material.dart';
import 'package:lil_sikh/widgets/custom_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              tooltip: "Save",
              onPressed: () {},
              icon: const Icon(Icons.save),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton(
                title: "English",
                onPress: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: "spanish",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
