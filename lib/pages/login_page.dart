import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_textfield.dart';
import 'package:login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userEmailController = TextEditingController();
  final passwordConreoller = TextEditingController();

  // sign user In method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // logo

              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),

              // wecomeback, you've been missed!

              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              //email
              MyTextFeild(
                controller: userEmailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 15),

              //password
              MyTextFeild(
                controller: passwordConreoller,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 20),

              //signin button

              MyButton(
                onTap: signUserIn,
                buttonName: 'SIGN IN',
                buttonColor: Colors.pink.shade700,
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text('Or Continue With'),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: 'lib/images/google.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(imagepath: 'lib/images/facebook.png')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      //google+facebook

      //not member register Now
    );
  }
}
