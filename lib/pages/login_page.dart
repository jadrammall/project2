import 'package:flutter/material.dart';
import 'package:mobile_proj_2/components/my_button.dart';
import 'package:mobile_proj_2/components/my_text_fields.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in user
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),

                  // logo
                  const Icon(
                    Icons.message,
                    size: 100,
                  ),

                  const SizedBox(height: 50,),

                  // welcome back message
                  const Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 25,),

                  // email text-field
                  MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                  ),

                  const SizedBox(height: 10,),

                  //password text-field
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25,),

                  // sign in button
                  MyButton(
                      onTap: signIn,
                      text: "Sign In"
                  ),

                  const SizedBox(height: 25),

                  // not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member?'),
                      const SizedBox(width: 4,),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
          ),
          ),
      )
    );
  }
}