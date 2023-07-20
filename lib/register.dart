import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool _passwordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(
                    context); // Navigate back when back arrow is clicked
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 285.0, top: 17.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,
                      'login'); // Navigate to login page when "Sign In" text is clicked
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              // Adjust the height to place the image below the app bar
              Image.asset(
                'assets/register.png',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(246, 252, 252, 1.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Color.fromRGBO(153, 159, 159, 1.0), fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      obscureText: !_passwordVisible,
                      // Use the _passwordVisible variable to toggle password visibility
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(246, 252, 252, 1.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color.fromRGBO(153, 159,
                            159, 1.0), fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // Add the suffixIcon to toggle password visibility
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            _passwordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add some spacing between login buttons and other elements
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe, // Set the initial value or use a state variable to handle the checkbox state
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = !_rememberMe;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        Spacer(), // Add a spacer to push the "Forgot Password" text to the right
                        GestureDetector(
                          onTap: () {
                            // Implement the logic for "Forgot Password"
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildSignInButton(text: "Sign In",
                        color: Color.fromRGBO(77, 174, 95, 1.0),
                        onPressed: () {}),
                  ],
                ),
              ),
              SizedBox(height: 5), // Additional spacing between login buttons and text
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
                      SizedBox(height: 165), // Space between "Don't have an account?" and "Terms & Conditions"
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "By clicking \"Sign in\" above, you agree to 7krave's ",
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
        ),
      ),
    );
  }

  Widget buildSignInButton({required String text, required Color color, required VoidCallback onPressed,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        width: 700, // Adjust the width as per your requirement
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}