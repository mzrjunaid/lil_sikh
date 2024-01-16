import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lil_sikh/Screens/reference_screen.dart';
import 'package:share_plus/share_plus.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          title.toUpperCase(),
        ),
        actions: [
          IconButton(
            tooltip: "Reference",
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ReferenceScreen(),
              ),
            ),
            icon: Image.asset('icons/read_icon.png', width: 24),
            iconSize: 24,
          ),
          IconButton(
            tooltip: "Share",
            onPressed: () {
              Share.share(title);
            },
            icon: const Icon(Icons.share),
            iconSize: 24,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        color: Colors.black, // with white color and opacity .5
                      )
                    ],
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "inq auiT gwvhu pRB kI bwxI ] AwT phr hir ismrhu pRwxI ]2]",
                      ),
                      const SizedBox(height: 30),
                      IconButton(
                        tooltip: "Play",
                        onPressed: () {},
                        icon: Image.asset(
                          'icons/play_icon.png',
                          width: 48,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  image
                      .split('.')
                      .join("_single.")
                      .replaceAll("menu", "single_page"),
                  scale: 1.75,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        color: Colors.black, // with white color and opacity .5
                      )
                    ],
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Wake up early in the morning and sing the beautiful words of God's bani. Twenty-four hours a day, remember Vaheguru (God).",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Aunque haya viento de temporal, el buscador seguirá yendo a ver a su Guru. Noche y día busco a mi Guru; enaltezco Sus Pies en mis ojos.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "fuli shabad here".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: const Color(0xFF00A8EF),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
