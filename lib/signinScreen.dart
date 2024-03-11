import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  String _inputText = '';
  bool _showPassword = true;

  void _setShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 229, 221),
          title: Text("Sign In"),
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
                      height: 250.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Welcome Back!!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 121, 94, 55),
                                fontFamily: "Sacramento",
                                fontSize: 35,
                                fontWeight: FontWeight.w800),
                          ),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                _inputText = value;
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: 'Pets user code',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
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
                                  _setShowPassword();
                                },
                                child: Icon(
                                  (_showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  color: Color.fromARGB(255, 121, 94, 55),
                                ),
                              ),
                              labelText: 'Pets password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/pet_gallery_logo_circle.png',
                          fit: BoxFit.contain,
                          width: 100,
                          height: 100,
                          alignment: Alignment.topCenter,
                        ),
                        Text(
                          'Pet Gallery',
                          style: TextStyle(
                              color: Color.fromARGB(255, 121, 94, 55),
                              fontFamily: "Sacramento",
                              fontSize: 45,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55.0,
                      child: FilledButton(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        onPressed: () {
                          GoRouter.of(context).go('/homeScreen');
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
