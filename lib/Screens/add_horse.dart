import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/Screens/profile_view.dart';

class AddHorse extends StatefulWidget {
  const AddHorse({super.key});

  @override
  State<AddHorse> createState() => _AddHorseState();
}

class _AddHorseState extends State<AddHorse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom bar
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFE4AB6E),
        child: Container(
          height: 10.0,
        ),
      ),
      // Replacing FloatingActionButton with a Container
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileView()),
          );
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xFFE4AB6E),
            borderRadius: BorderRadius.circular(30), // Circular shape
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: const Icon(Icons.account_circle, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/add_background.jpg'),
                fit: BoxFit
                    .cover, // Adjusts the image to cover the entire screen
              ),
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                color: Colors.black.withOpacity(0), // Transparent container
              ),
            ),
          ),
          Center(
            child: Text(
              'No horses added yet!',
              style: GoogleFonts.robotoCondensed(
                color: const Color.fromARGB(255, 220, 216, 211),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ProfileView class
