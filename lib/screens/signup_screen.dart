import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';

import '../widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _bioTextEditingController =
      TextEditingController();
  final TextEditingController _userNameTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _bioTextEditingController.dispose();
    _userNameTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              //svg image
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1663267028525-3a70bcc64b8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.camera_alt)))
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              //text field input for email
              TextFieldInput(
                hintText: "Enter UserName",
                textInputType: TextInputType.text,
                textEditingController: _userNameTextEditingController,
              ),
              const SizedBox(
                height: 24,
              ),
              //text field input for email
              TextFieldInput(
                hintText: "Enter Your Email",
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailTextEditingController,
              ),
              const SizedBox(
                height: 24,
              ),
              //text field input for password
              TextFieldInput(
                hintText: "Enter Your Password",
                textInputType: TextInputType.text,
                textEditingController: _passwordTextEditingController,
                isPass: true,
              ),
              const SizedBox(
                height: 24,
              ),
              //text field input for email
              TextFieldInput(
                hintText: "Enter Your Bio",
                textInputType: TextInputType.text,
                textEditingController: _userNameTextEditingController,
              ),
              const SizedBox(
                height: 24,
              ),
              //button login
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: blueColor,
                  ),
                  child: const Text("Log in"),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //Transitioning to sining up
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Have an account.Go to"),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
