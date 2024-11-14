import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red.shade300,
  ));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground (e.g., your LoginPage)
          const LoginPage(),
        ],
      ),
    ),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( // Wrap the main content in a SafeArea
      child: SingleChildScrollView( // Wrap in SingleChildScrollView to enable scrolling
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Project Name at the top
              const SizedBox(height: 100.0),
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

              const SizedBox(height: 40.0),

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

              const SizedBox(height: 40.0),

              // Centered Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Login Button Pressed!');
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
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),

              // "Don't have an account? Sign up"
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('Sign up tapped!');
                      },
                      child: Text(
                        'Sign up',
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
            ],
          ),
        ),
      ),
    );
  }
}
