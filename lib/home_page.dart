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

                    // Spacing
                    const SizedBox(width: 15.0),

                    // Styled Dropdown Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5.0),  // Add the padding here
                      child: Container(
                        width: 126,  // Adjust the width here to control dropdown width
                        height: 50,  // Adjust the height here to control dropdown height
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
                              value: _selectedOption,  // Set current selected option
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  setState(() {
                                    _selectedOption = newValue;
                                  });
                                }
                              },
                              dropdownColor: Colors.red.shade300,
                              items: <String>['Cakes', 'Cupcakes', 'Cookies']  // List of dropdown items
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
        ],
      ),

      // Footer Navigation Bar with Image Background
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,  // Transparent background for the app bar
        child: Container(
          width: double.infinity,  // Ensure the container takes the full width of the screen
          height: 200,  // Height of the BottomAppBar
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),  // Vertical padding for height control
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Evenly spaced icons
              children: [
                // Custom Image Icon for Home Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),  // Adjusted horizontal padding
                  child: IconButton(
                    icon: Image.asset('images/clock.png', width: 40, height: 40),  // Larger icon size
                    onPressed: () {
                      // Handle home button press
                    },
                  ),
                ),

                // Custom Image Icon for Search Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),  // Adjusted horizontal padding
                  child: IconButton(
                    icon: Image.asset('images/pencil.png', width: 40, height: 40),  // Larger icon size
                    onPressed: () {
                      // Handle search button press
                    },
                  ),
                ),

                // Custom Image Icon for Cart Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),  // Adjusted horizontal padding
                  child: IconButton(
                    icon: Image.asset('images/user.png', width: 40, height: 40),  // Larger icon size
                    onPressed: () {
                      // Handle cart button press
                    },
                  ),
                ),

                // Custom Image Icon for Account Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),  // Adjusted horizontal padding
                  child: IconButton(
                    icon: Image.asset('images/heart.png', width: 40, height: 40),  // Larger icon size
                    onPressed: () {
                      // Handle account button press
                    },
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
