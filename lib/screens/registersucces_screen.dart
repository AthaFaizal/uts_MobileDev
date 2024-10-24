import 'package:flutter/material.dart';

class RegisterSukses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate back to the main page after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/');
    });

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient with blue colors
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade700,
                  Colors.lightBlueAccent.shade100,
                ],
              ),
            ),
          ),
          Center(
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white.withOpacity(0.9),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Emote jempol
                  Text(
                    "👍", // Emote jempol
                    style: TextStyle(fontSize: 60),
                  ),
                  SizedBox(height: 10),
                  // Success message
                  Text(
                    '"Pendaftaran Berhasil"',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Terima kasih telah mendaftar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
