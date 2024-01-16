import 'package:flutter/material.dart';
import 'package:lil_sikh/Screens/setting_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:lil_sikh/Screens/detail_screen.dart';
import '../models/menu_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _sendEmail() async {
    final Uri emailLauncherUri = Uri(
      scheme: 'mailto',
      path: 'khalsa@sharecharityuk.com',
      queryParameters: {
        'subject': "Lil' Sikhs Daily Prayer",
      },
    );
    if (await canLaunchUrl(emailLauncherUri)) {
      await launchUrl(emailLauncherUri);
    } else {
      throw 'Could not launch $emailLauncherUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title.toUpperCase(),
        ),
        actions: [
          IconButton(
            icon: Image.asset("icons/message_icon.png", width: 24),
            tooltip: 'khalsa@sharecharityuk.com',
            onPressed: _sendEmail,
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingScreen()),
            ),
            icon: Image.asset('icons/setting_icon.png', width: 24),
            // icon: const Icon(Icons.settings),
          )
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.builder(
          itemCount: imagesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            mainAxisSpacing: 8,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(2),
                child: Image(
                  image: AssetImage(imagesList[index]),
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    image: imagesList[index],
                    title: titleList[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
