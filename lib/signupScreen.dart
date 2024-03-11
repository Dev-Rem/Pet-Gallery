import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isFirstFormFilled = false;
  bool _showPassword = true;
  bool _showConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 229, 221),
          title: Text("Sign up"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous screen
              GoRouter.of(context).go('/');
            },
          ),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              // FocusScope.of(context).unfocus() will hide the keyboard
              FocusScope.of(context).unfocus();
            },
            child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
              color: Color.fromARGB(255, 237, 229, 221),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Create Account!!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 121, 94, 55),
                                fontFamily: "Sacramento",
                                fontSize: 35,
                                fontWeight: FontWeight.w800),
                          ),
                          if (!isFirstFormFilled)
                            Text(
                                "Please provide the requested information as it applies to your pet."),
                          if (isFirstFormFilled)
                            Text(
                                "Password should contain uppercase, lowercase, special character, and digit."),
                          if (!isFirstFormFilled)
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                labelText: 'Name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          if (isFirstFormFilled)
                            TextField(
                              obscureText: _showPassword,
                              onChanged: (value) {
                                setState(() {
                                  // _inputText = value;
                                });
                              },
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Icon(
                                    (_showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    color: Color.fromARGB(255, 121, 94, 55),
                                  ),
                                ),
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          if (isFirstFormFilled)
                            TextField(
                              obscureText: _showConfirmPassword,
                              onChanged: (value) {
                                setState(() {
                                  // _inputText = value;
                                });
                              },
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showConfirmPassword =
                                          !_showConfirmPassword;
                                    });
                                  },
                                  child: Icon(
                                    (_showConfirmPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    color: Color.fromARGB(255, 121, 94, 55),
                                  ),
                                ),
                                labelText: 'Confirm password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          if (!isFirstFormFilled)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        // _inputText = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Age',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        // _inputText = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Gender',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          if (!isFirstFormFilled)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        // _inputText = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Animal',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        // _inputText = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Breed',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    if (!isFirstFormFilled)
                      SizedBox(
                        width: double.infinity,
                        height: 55.0,
                        child: FilledButton(
                          onPressed: () {
                            // GoRouter.of(context).go('/homeScreen');
                            if (!isFirstFormFilled) {
                              setState(() {
                                isFirstFormFilled = true;
                              });
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Add some space between the icon and text
                              Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (isFirstFormFilled)
                      SizedBox(
                        width: double.infinity,
                        height: 55.0,
                        child: FilledButton(
                          onPressed: () {
                            GoRouter.of(context).go('/homeScreen');
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Add some space between the icon and text
                              Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ]),
            ),
          ),
        ));
  }
}
