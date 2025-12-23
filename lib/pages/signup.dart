import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 90,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an \nAccount',
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: 'Ubuntu',
                    fontSize: 40,
                    height: 1.1,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Already have an account?', style: TextStyle(color: Colors.white54),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white54,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                          ),
                      ),
                    )
                  ],
                )
              ]
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDEDACB),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your full name',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 14
                        ),
                        filled: true,
                        fillColor: Color(0xFFeae6d9),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        suffixIcon: Icon(Icons.person, color: Colors.black45, size: 20,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      )
                    ),
                    SizedBox(height: 14,),
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 14
                          ),
                          filled: true,
                          fillColor: Color(0xFFeae6d9),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 18,
                          ),
                          suffixIcon: Icon(Icons.email, color: Colors.black45, size: 20,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        )
                    ),
                    SizedBox(height: 14,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFFeae6d9),
                          ),
                          child: Icon(Icons.lock, color: Colors.black45, size: 20,),
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
          )
        ],
      )
    );
  }
}
