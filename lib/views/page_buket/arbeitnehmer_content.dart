import 'package:deine_job_site/styles/colors.dart';
import 'package:flutter/material.dart';

class ArbeitnehmerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Drei einfache Schritte',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          'zu deinem neuen Job',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '1. ',
                style: TextStyle(fontSize: 85, fontWeight: FontWeight.bold),
              ),
              Text(
                'Erstellen deinen Lebenslauf',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 30),
              Image.asset(
                'assets/images/image1.png', // Replace with your image path
                height: 150,
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 300, // Adjust as needed for the height of the container
          decoration: BoxDecoration(
            gradient: AppColors.backgroundGradient, // Adjust colors as needed
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/image3.png', // Replace with your image path
                  height: 150,
                ),
                SizedBox(width: 30),
                Text(
                  '2. ',
                  style: TextStyle(fontSize: 85, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Erstellen deinen Lebenslauf',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '3. ',
                style: TextStyle(fontSize: 85, fontWeight: FontWeight.bold),
              ),
              Text(
                'Erstellen deinen Lebenslauf',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 30),
              Image.asset(
                'assets/images/image2.png', // Replace with your image path
                height: 150,
              ),
            ],
          ),
        ),
        // Stack(
        //   children: [
        //     Positioned(
        //       top: 0,
        //       left: 0,
        //       right: 0,
        //       child: ClipPath(
        //         clipper: TopWaveClipper(),
        //         child: Container(
        //           height: 50, // Adjust as needed for the wave height
        //           color: const Color.fromARGB(
        //               255, 255, 255, 255), // Color above the wave
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       bottom: 0,
        //       left: 0,
        //       right: 0,
        //       child: ClipPath(
        //         clipper: BottomWaveClipper(),
        //         child: Container(
        //             height: 50, // Adjust as needed for the wave height
        //             color: Colors.white // Color below the wave
        //             ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height + 20, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
