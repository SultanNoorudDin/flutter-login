import 'package:flutter/material.dart';
import 'package:login/components/myTextField.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text edit controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //welcome back
              Text(
                'welcome back you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'username',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              // password
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: false,
              ),

              const SizedBox(height: 25),
              // forgot password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button

              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 25),

              // continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // google+apple account
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google
                  SquareTile(path: 'lib/images/google.png'),

                  SizedBox(
                    width: 10,
                  ),
                  //apple
                  SquareTile(path: 'lib/images/apple.png')
                ],
              ),
              // register

              const SizedBox(
                height: 50,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                   SizedBox(
                    width: 4,
                  ),

                  Text("Register",
                  style: TextStyle(
                    color: Colors.blue,  fontWeight: FontWeight.bold  ,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
