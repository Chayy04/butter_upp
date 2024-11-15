import 'package:butter_upp/main.dart';
import 'package:butter_upp/welcome_user_page.dart';
import 'package:flutter/material.dart';
import 'background_widget.dart'; // Import the background widget

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Reuse the BackgroundWidget from the widget folder
          const home_background(),
          // Your SignUpPage content
          SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Project Name at the top
                    const SizedBox(height: 70.0),
                    const Text(
                      'BatterUp',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Image.asset(
                      'images/woodroll.png',  // Path to your image
                      //fit: BoxFit.cover, // This ensures the image fills the available space
                      width: double.infinity,  // Makes the image take up the full width
                      height: 10,  // Adjust height based on your layout
                    ),
                    const SizedBox(height: 40.0),
                    const Text(
                      'Personal Details',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20.0),

                    // Username Label and Input
                     Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Colors.black,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Username',
                              hintStyle: TextStyle(
                                fontFamily: 'Lexend',
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 3.0,
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10.0),

                    // Password Label and Input
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Colors.black87,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Lexend',
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 3.0,
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10.0),

                    //Confirm Password and Input
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Colors.black87,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Lexend',
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 3.0,
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    // Create Account Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          var login_button = Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomeUserPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade300,
                          padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                        ),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30.0),

                    // "Already have an account? Log In"
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18.0,
                              color: Colors.black87,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to the SignUpPage when 'Sign up' is tapped
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 18.0,
                                color: Colors.red.shade300,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red.shade300,
                                decorationThickness: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),

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
