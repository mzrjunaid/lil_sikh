import 'package:flutter/material.dart';

const String referenceTitle =
    "This pangti (line is from Sri Guru Granth Sahib Jee:";
const String ang = "1340";
const String raag = "Prabhati (seriousness mood)";
const String author = "Guru Arjun Dev Jee – the fifth Guru";
const String explaination =
    "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath.";

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({super.key});

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
        title: const Text('BACK'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
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
                child: const Text(
                  "Title:$referenceTitle,\nAng (limb/page): $ang,\nRaag (medley to create the mood): $raag,\nAuthor: $author",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(16),
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
                child: const Text(
                  explaination,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
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
