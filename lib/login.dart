import 'package:appdev_task1/register.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image.asset(
                      'assets/login.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              // Login buttons
              buildLoginButton(
                text: 'Continue with Email',
                color: Color.fromRGBO(77, 174, 95, 1.0),
                onPressed: () {
                  // Action when "Login with Email" button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyRegister(),
                    ),
                  );
                },
              ),
              buildLoginButton(
                text: ' Continue with Apple',
                color: Color.fromRGBO(25, 25, 25, 1.0),
                onPressed: () {
                  // Action when "Login with Apple" button is pressed
                },
              ),
              buildLoginButton(
                text: 'Continue with Google',
                color: Color.fromRGBO(83, 132, 237, 1.0),
                onPressed: () {
                  // Action when "Login with Google" button is pressed
                },
              ),
              buildLoginButton(
                text: 'Continue with Facebook',
                color: Color.fromRGBO(66, 88, 146, 1.0),
                onPressed: () {
                  // Action when "Login with Facebook" button is pressed
                },
              ),
              SizedBox(height: 0), // Additional spacing between login buttons and text
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Color.fromRGBO(76,146,94, 1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50), // Space between "Don't have an account?" and "Terms & Conditions"
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "By clicking \"Continue with Email/Apple/Google/Facebook\" above, you agree to 7krave's ",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),
                          children: [
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                color: Color.fromRGBO(206,194,169, 1.0),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Color.fromRGBO(206,194,169, 1.0),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            right: 15,
            child: ElevatedButton(
              onPressed: () {
                // Action when "Skip" button is pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(250, 242, 229, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginButton({required String text, required Color color, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
