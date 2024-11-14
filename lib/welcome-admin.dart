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
                child: Column(  // Removed `const` here
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome, Admin!',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Image.asset(
                      'images/pastry_chef.png',  // Path to your image
                      //fit: BoxFit.cover, // This ensures the image fills the available space
                      width: double.infinity,  // Makes the image take up the full width
                      height: 300,  // Adjust height based on your layout
                    ),
                  ],
                ),
              ),





              const SizedBox(height: 40.0),

              // Centered Button
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Check Recipes Button Pressed!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade300,
                        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/cakeicon.png',  // Custom icon for Check Recipes
                            width: 24,
                            height: 24,
                            color: Colors.white,  // Optional: Tint the icon to match button text color
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Check Recipes',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,  // Semi-bold weight

                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Create Recipes Button Pressed!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade300,
                        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white.withOpacity(0.9),
                                size: 24,
                              ),
                              Positioned(
                                left: 1.0,  // Slight horizontal offset for thicker effect
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Create Recipes',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,  // Semi-bold weight
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20.0),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('Logout tapped!');
                      },
                      child: Text(
                        'Log out',
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
