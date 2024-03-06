import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            getImageAssetForScreenSize(context),
            Container(
              height: 100,
              width: 80,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  height: 480,
                  width: 300,
                  constraints: BoxConstraints(
                    maxHeight: 500.0,
                    maxWidth: 450.0,
                  ),
                  margin: EdgeInsets.only(bottom: 30.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Changes position of shadow
                      ),
                    ],

                    color: Colors.black
                        .withOpacity(0.85), // Transparent black color
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                  color: Color.fromARGB(255, 237, 229, 221),
                                  fontFamily: "Sacramento",
                                  fontSize: 45,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            "Share the love, one paw at a time."),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            "Welcome to Pet Gallery – where every wag, purr, and chirp has its own story."),
                        OverflowBar(
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                                width: 120.0,
                                height: 45.0,
                                child: FilledButton.tonal(
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the radius as needed
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Color.fromARGB(
                                                  255, 237, 229, 221))),
                                )),
                            SizedBox(
                              width: 120.0,
                              height: 45.0,
                              child: FilledButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getImageAssetForScreenSize(BuildContext context) {
  // Get the device's screen size
  double screenWidth = MediaQuery.of(context).size.width;

  // Choose image asset based on screen size
  if (screenWidth < 600) {
    return Image.asset(
      'assets/landingScreenBackgroundSmall.png',
      fit: BoxFit.cover,
    );
  } else {
    return Image.asset(
      'assets/landingScreenBackgroundBig.png',
      fit: BoxFit.fitWidth,
    );
  }
}
