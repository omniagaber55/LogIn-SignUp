import 'package:flutter/material.dart';
import 'package:loginsignup/screens/LogIn_Screen.dart';
import 'package:loginsignup/screens/RegisterScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/img-3.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          //login button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn_Screen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //register button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xFF1E232C),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Color(0xFF1E232C),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Continue as a guest",
              style: TextStyle(
                color: Color(0xFF35C2C1),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
