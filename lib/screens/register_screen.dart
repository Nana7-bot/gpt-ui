import 'package:flutter/material.dart';
import 'package:gpt/screens/login_screen.dart';

import '../constants.dart';
import '../custom_button.dart';
import '../text_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ////////////////////////
                    ///// Image
                    /////////////////////////////
                    const ImageIcon(
                      AssetImage(
                        "images/logo.png",
                      ),
                      size: 40,
                    ),
                    kSizedBoxHeight30,

                    const Text("Create your account", style: kTextStyle25),
                    kSizedBoxHeight30,

                    ///////////////////////
                    //// Email address text Field
                    /////////////////////////////
                    const TextFieldWidget(
                      labelText: 'Email address',
                    ),
                    kSizedBoxHeight20,

                    ///////////////////////
                    //// Password text Field
                    /////////////////////////////
                    const TextFieldWidget(
                      labelText: 'Password',
                    ),
                    kSizedBoxHeight10,

                    ///////////////////////
                    //// Button for login
                    /////////////////////////////
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                          backgroundColor: kSecondaryColorGreen),
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: kTextStyle9,
                      ),
                    ),
                    kSizedBoxHeight20,

                    ///////////////////////
                    //// Sign up option
                    /////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: kTextStyle9,
                        ),
                        kSizedBoxWidth5,
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: kTextStyle9.copyWith(
                                color: kSecondaryColorGreen),
                          ),
                        ),
                      ],
                    ),
                    kSizedBoxHeight30,

                    ///////////////////////
                    //// Divider
                    /////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        kDivider,
                        Text(
                          "OR",
                          style: kTextStyle8,
                        ),
                        kDivider
                      ],
                    ),
                    kSizedBoxHeight30,

                    ///////////////////////
                    //// Other options for login
                    /////////////////////////////
                    CustomButton(
                      imagePath: "images/google.png",
                      imageScale: 120,
                      labelString: "Continue with google account",
                      onPressAction: () {},
                    ),
                    kSizedBoxHeight20,

                    CustomButton(
                      imagePath: "images/microsoft.png",
                      imageScale: 20,
                      labelString: "Continue with microsoft account",
                      onPressAction: () {},
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
