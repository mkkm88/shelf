import 'package:expiry_tracker/models/country.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  Country selectedCountry = countryList.first;
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDEDACB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
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
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Color(0xFFeae6d9),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.black45,
                          size: 20,
                        ),
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
                      ),
                    ),
                    SizedBox(height: 14),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Color(0xFFeae6d9),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.black45,
                          size: 20,
                        ),
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
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFFeae6d9),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<Country>(
                              value: selectedCountry,
                              onChanged: (value) {
                                setState(() => selectedCountry = value!);
                              },
                              items: countryList.map((country) {
                                return DropdownMenuItem<Country>(
                                  value: country,
                                  child: Row(
                                    children: [
                                      Text(
                                        country.flag,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        country.dialCode,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: phoneController,
                            decoration: InputDecoration(
                              hintText: '9999999999',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: Color(0xFFeae6d9),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 18,
                              ),
                              suffixIcon: Icon(
                                Icons.phone,
                                color: Colors.black45,
                                size: 20,
                              ),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Color(0xFFeae6d9),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black45,
                          size: 20,
                        ),
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
                      ),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(child: Divider(color: Colors.black26)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'Or',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                          Expanded(child: Divider(color: Colors.black26)),
                        ],
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _socialButton(
                          icon: Icons.g_mobiledata_rounded,
                          onTap: () {},
                        ),
                        SizedBox(width: 24),
                        _socialButton(icon: Icons.facebook, onTap: () {}),
                        SizedBox(width: 24),
                        _socialButton(icon: Icons.apple, onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _socialButton({required IconData icon, required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color(0xFFeae6d9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(padding: const EdgeInsets.all(10), child: Icon(icon)),
    ),
  );
}
