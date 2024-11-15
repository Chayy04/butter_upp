import 'package:flutter/material.dart';
import 'home_background.dart';  // Assuming this is a custom widget in your project.

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Initialize the dropdown value to one of the options
  String _selectedOption = 'Cakes'; // Ensure this is one of the options

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Widget
          const Homebackground(),

          // Content
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // "BatterUp" Text
                    Text(
                      'BatterUp .',
                      style: const TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 15.0), // Spacing
                    // Styled Dropdown Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                      child: Container(
                        width: 126,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedOption,
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  setState(() {
                                    _selectedOption = newValue;
                                  });
                                }
                              },
                              dropdownColor: Colors.red.shade300,
                              items: <String>['Cakes', 'Cupcakes', 'Cookies']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              }).toList(),
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Left-aligned Content with Image, Text, and Buttons
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 180.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Custom Image above Text
                  Image.asset(
                    'images/red-velvet.png',
                    width: 360,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  // Texts above the buttons
                  Text(
                    'Cakes',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Red Velvet Cake',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade300,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Buttons in Row (Side by Side)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('Delete Recipe Button Pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 5),
                            const Text(
                              'Delete Recipe',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('Check Recipe Button Pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade300,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 5),
                            const Text(
                              'Check Recipe',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Positioned button at the top-right of the image
          Positioned(
            top: 190,  // Adjust vertical position
            right: 55, // Adjust horizontal position
            child: ElevatedButton(
              onPressed: () {
                debugPrint('Small Button Pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
              ),
              child: Image.asset(
                'images/smallh.png', // Path to your custom image
                width: 20, // Set the size of the image
                height: 20, // Set the size of the image
              ),
            ),
          ),

        ],
      ),

      // Footer Navigation Bar with Image Background
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Custom Image Icon for Home Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Image.asset('images/clock.png', width: 40, height: 40),
                    onPressed: () {},
                  ),
                ),
                // Custom Image Icon for Search Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Image.asset('images/pencil.png', width: 40, height: 40),
                    onPressed: () {},
                  ),
                ),
                // Custom Image Icon for Cart Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Image.asset('images/user.png', width: 40, height: 40),
                    onPressed: () {},
                  ),
                ),
                // Custom Image Icon for Account Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Image.asset('images/heart.png', width: 40, height: 40),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
