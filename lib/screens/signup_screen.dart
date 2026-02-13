import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFDFFFBF),
              Color(0xFFE6FFE6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // ---------- SIGNUP PANEL ----------
              Container(
                width: 325, // Keeping your wider width for Signup
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 50,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF4A4AE6),
                      Color(0xFF3B3BD1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LilitaOne',
                      ),
                    ),
                    const SizedBox(height: 40),

                    _inputField("Mail ID"),
                    const SizedBox(height: 20),
                    _inputField("Password", isPassword: true),

                    const SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _clearButton(),
                        _signUpButton(context),
                      ],
                    ),

                    const SizedBox(height: 40),

                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'LilitaOne',
                        ),
                        children: [
                          const TextSpan(
                            text: "Already have an account? Click ",
                          ),
                          TextSpan(
                            text: "here",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                          ),
                          const TextSpan(text: " to login"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ---------- ATTSYS BADGE ----------
              Positioned(
                top: -20,
                left: 25,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Text(
                        "ATTSYS2-0",
                        style: TextStyle(
                          color: Color(0xFF3B3BD1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Impact',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Widgets ----------

  Widget _inputField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.black, fontFamily: 'LilitaOne'),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFF4849e8)),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Color(0xFF7CFF00),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Color(0xFF7CFF00),
            width: 2,
          ),
        ),
      ),
    );
  }

  Widget _clearButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 12,
        ),
        textStyle: const TextStyle(fontFamily: 'LilitaOne'),
      ),
      onPressed: () {},
      child: const Text("Clear"),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00FF00),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 12,
        ),
        textStyle: const TextStyle(fontFamily: 'LilitaOne'),
      ),
      onPressed: () {},
      child: const Text("Sign Up"),
    );
  }
}