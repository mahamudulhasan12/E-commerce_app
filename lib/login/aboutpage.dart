import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",style:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const CircleAvatar(
              radius: 60,
                
              backgroundImage: NetworkImage(

                  "https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/491404023_691407226784795_3020791433329691113_n.jpg?stp=dst-jpg_tt6&cstp=mx1000x993&ctp=p526x296&_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGEjzAQoJEgKVD4F6NRyCmPcIc_gSVHoPRwhz-BJUeg9Lp3ep9PUWHmSKKFqyf1cSRcCKX6BLV9CTlOqtuvi5Af&_nc_ohc=mkN0nNf8vpQQ7kNvwHqBd5-&_nc_oc=Adq1nA0Do_a_mNIo_GIXrPftacS3gBRxL7WId1esWJRp6LfJfeqirIEVw9Q6iFQGXrg&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=0uVXenvqZJEFP7lmiqmXVA&_nc_ss=7b2a8&oh=00_AQC6je5yZ84Ds-acIsK8ToSYGwf6y1KIGe-gZRyMOwsHlQ&oe=6A4EF098"),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "MD Mahamudul Hasan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "About Me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Hi, I'm MD Mahamudul Hasan, I am a junior Flutter Mobile App developer and a student at Dinajpur Polytechnic Institute.",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Education",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Currently studying at Dinajpur Polytechnic Institute while learning Flutter App Development at CoderAngon.",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Projects",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Recently, I developed a simple Android E-Commerce application using the Flutter Framework. I enjoy building clean, responsive, and user-friendly mobile applications.",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Goals",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "I am always eager to learn new technologies, improve my Flutter skills, contribute to exciting projects, and build a successful career as a Mobile App Developer.",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 30),
            Center(
              child: Text('Date :04-07-2026'),
            ),
            Center(
              child: Text('Mahamdul Hasan',style:TextStyle(
                fontSize: 10
              ),),
            )
          ],
        ),
      ),
    );
  }
}
