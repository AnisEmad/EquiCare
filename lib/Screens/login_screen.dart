import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5A432C),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Horse_background.png'),
                fit: BoxFit
                    .cover, // Adjusts the image to cover the entire screen
              ),
            ),
          ),

          // Blur Effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                color: Colors.black.withOpacity(0), // Transparent container
              ),
            ),
          ),

          // Content
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Circle Avatar
                  const CircleAvatar(
                    radius: 90,
                    backgroundColor: Color(0xFFE4AB6E),
                    backgroundImage: AssetImage('images/not.png'),
                  ),
                  const SizedBox(height: 20),

                  // Title
                  Text(
                    'SIGN IN',
                    style: GoogleFonts.robotoCondensed(
                      color: Color(0xFFFFA726),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Subtitle
                  Text(
                    'Welcome back nice to see you again :-)',
                    style: GoogleFonts.robotoCondensed(
                      color: Color(0xFFE0E0E0),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Email TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(228, 171, 110, 0.44),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Password TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(228, 171, 110, 0.44),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Sign In Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4AB6E),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.robotoCondensed(
                            color:
                                const Color(0xFF4A3824), // Vibrant and thematic
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Sign Up Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not yet a member? ',
                        style: GoogleFonts.robotoCondensed(
                          color: const Color(0xFFF5E0C3),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Sign up Now',
                        style: GoogleFonts.robotoCondensed(
                          color: const Color.fromARGB(255, 255, 132, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
