import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPress});

  final String title;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Theme.of(context).colorScheme.background,
        // foregroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 10,
        padding: const EdgeInsets.fromLTRB(120, 25, 120, 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {},
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
