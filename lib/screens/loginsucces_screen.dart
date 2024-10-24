import 'package:flutter/material.dart';

class LoginSukses extends StatefulWidget {
  @override
  _LoginSuksesState createState() => _LoginSuksesState();
}

class _LoginSuksesState extends State<LoginSukses> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    // Initialize the scale animation
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOutBack);

    // Start the animation
    _controller.forward();

    // Navigate to the profile page after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/profile');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with gradient colors
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blueAccent.shade700,
                  Colors.lightBlueAccent.shade100,
                ],
              ),
            ),
          ),
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.white,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Emote (could be an icon or image)
                    Text(
                      "🎉", // Emote
                      style: TextStyle(fontSize: 60),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '"Selamat Datang"',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Muhammad Athallarik',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}