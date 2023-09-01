import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loona_welcome_screen/styles/colors.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_PRIMARY_BG,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Back button
            Container(
              height: 150,
              alignment: Alignment.topLeft,
              child: Container(
                child: CupertinoButton(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(top: 65),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print("Go back!");
                  },
                ),
              ),
            ),

            // Title: Welcome back
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "back",
                    style: TextStyle(
                      color: COLOR_TITLE,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            // Login provider buttons
            Column(
              children: [
                Column(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple,
                              color: Colors.black,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Sign in with Apple",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: COLOR_FB,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Log in with Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                Text(
                  "or",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // Input fields
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: COLOR_INPUT_BG,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: COLOR_INPUT_TEXT,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Your email",
                            contentPadding:
                                EdgeInsets.only(left: 15, right: 15),
                            hintStyle: TextStyle(
                              color: COLOR_INPUT_TEXT,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: COLOR_INPUT_BG,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: COLOR_INPUT_TEXT,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            contentPadding:
                                EdgeInsets.only(left: 15, right: 15),
                            hintStyle: TextStyle(
                              color: COLOR_INPUT_TEXT,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By continuing, you agree to Loóna's",
                            style: TextStyle(color: COLOR_INPUT_TEXT),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Terms of Use",
                                style: TextStyle(
                                  color: COLOR_INPUT_TEXT,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "&",
                                style: TextStyle(
                                  color: COLOR_INPUT_TEXT,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  color: COLOR_INPUT_TEXT,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Login button and forgot password
                SizedBox(
                  height: 75,
                ),
                Container(
                  child: Column(
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff3a1757), Color(0xff2e0f55)],
                              stops: [0, 1],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Log in",
                                style: TextStyle(
                                  color: COLOR_INPUT_TEXT,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: COLOR_INPUT_TEXT,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
