import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
   AboutPage({super.key});

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
            Container(
              height: 80,
              width: 80,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1,color: Colors.grey.shade300),
                image: DecorationImage(
                  image: NetworkImage("https://media.licdn.com/dms/image/v2/D5603AQGR8acUO7dPqg/profile-displayphoto-scale_400_400/B56Zx6tHZ6IgAg-/0/1771585180108?e=1787788800&v=beta&t=2fABgjhjnxVoWVMtGQv_kgugEwz0OK2JM-ln_IOWe7w")
                )
              ),
              
            //   child: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage("https://media.licdn.com/dms/image/v2/D5603AQGR8acUO7dPqg/profile-displayphoto-scale_400_400/B56Zx6tHZ6IgAg-/0/1771585180108?e=1787788800&v=beta&t=2fABgjhjnxVoWVMtGQv_kgugEwz0OK2JM-ln_IOWe7w"),
            // ),
            ),
            SizedBox(height: 20),

             Center(
              child: Text(
                "MD Mahamudul Hasan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

             SizedBox(height: 8),

             Center(
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
