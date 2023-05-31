import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Login/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int selectedRole = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Image.asset('assets/Unit 3c2.png')),
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 223, 217, 217),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                        hintStyle: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 223, 217, 217),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 223, 217, 217),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedRole == 1
                            ? Color.fromARGB(255, 103, 100, 100)
                            : Color.fromARGB(255, 223, 217, 217),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedRole = 1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Participant',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedRole == 2
                            ? Color.fromARGB(255, 103, 100, 100)
                            : Color.fromARGB(255, 223, 217, 217),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedRole = 2;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Mentor',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 240,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 66, 62, 62),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .transparent, // Menghapus warna latar belakang ElevatedButton
                        elevation: 0, // Menghapus bayangan ElevatedButton
                      ),
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.quicksand().copyWith(
                          color:
                              Colors.white, // Mengubah warna teks menjadi putih
                          fontSize: 16, // Mengubah ukuran font teks
                          fontWeight:
                              FontWeight.bold, // Mengatur gaya huruf italic
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color.fromARGB(255, 114, 113, 113),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 114, 113, 113),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 201, 199, 199),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .transparent, // Menghapus warna latar belakang ElevatedButton
                      elevation: 0, // Menghapus bayangan ElevatedButton
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon_google.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Continue With Google',
                          style: GoogleFonts.quicksand().copyWith(
                            color: const Color.fromARGB(255, 46, 45,
                                45), // Mengubah warna teks menjadi putih
                            fontSize: 16, // Mengubah ukuran font teks
                            fontWeight:
                                FontWeight.bold, // Mengatur gaya huruf italic
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // Logika login
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Existing User ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 91, 89, 89),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .transparent, // Menghapus warna latar belakang ElevatedButton
                              elevation: 0, // Menghapus bayangan ElevatedButton
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login',
                                  style: GoogleFonts.quicksand().copyWith(
                                    color: Colors
                                        .white, // Mengubah warna teks menjadi putih
                                    fontSize: 16, // Mengubah ukuran font teks
                                    fontWeight: FontWeight
                                        .bold, // Mengatur gaya huruf italic
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
