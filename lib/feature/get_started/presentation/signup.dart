import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            "assets/background.jpg", // Replace with your image asset path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Text(
                      "New User? Get Started Now",
                      style: GoogleFonts.alata(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Signup Form
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name*",
                            style: GoogleFonts.alata(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter your first name',
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Email ID*",
                            style: GoogleFonts.alata(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter your email',
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Password*",
                            style: GoogleFonts.alata(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter your password',
                              prefixIcon: Icon(Icons.lock),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (_) => LoginScreen()),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      side: BorderSide(width: 1, color: Colors.teal),
                                    ),
                                  ),
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    String password = generatePassword(8, true, true, true);
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                        title: Text("Generated Password"),
                                        content: Text(password),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("OK"),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      side: BorderSide(width: 1, color: Colors.teal),
                                    ),
                                  ),
                                  child: Text(
                                    'GENERATE',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Terms and Conditions | Privacy Policy",
                    style: GoogleFonts.akayaTelivigala(
                      fontSize: 12,
                      color: Color(0xff4F4F4F),
                    ),
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

String generatePassword(int length, bool includeNumbers, bool includeLetters, bool includeSpecialChars) {
  const letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const numbers = "0123456789";
  const specialChars = "!@#\$%^&*()_-+=<>?";

  String validChars = "";
  if (includeLetters) validChars += letters;
  if (includeNumbers) validChars += numbers;
  if (includeSpecialChars) validChars += specialChars;

  String password = "";
  Random random = Random();

  for (int i = 0; i < length; i++) {
    int randomIndex = random.nextInt(validChars.length);
    password += validChars[randomIndex];
  }

  return password;
}
