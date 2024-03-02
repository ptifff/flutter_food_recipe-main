import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            "assets/background.jpg", // Replace with your image asset path
            fit: BoxFit.cover,
          ),
          // Backdrop Filter to blur the background image
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
            ),
          ),
          // Login Form
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle with Image
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/chowmein.jpeg"), // Replace with your image asset path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Your login form widgets here
                Text(
                  "Welcome To Foodiezz",
                  style: GoogleFonts.alata(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Already a member? Login to Continue",
                    style: GoogleFonts.alata(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate the form
                                if (_formKey.currentState!.validate()) {
                                  // Form is valid, proceed with sign up
                                  Navigator.pushNamed(context, '/signup');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: BorderSide(
                                      width: 1, color: Colors.teal),
                                ),
                              ),
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate the form
                                if (_formKey.currentState!.validate()) {
                                  // Form is valid, proceed with login
                                  Navigator.pushNamed(context, '/home');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: BorderSide(
                                      width: 1, color: Colors.teal),
                                ),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}