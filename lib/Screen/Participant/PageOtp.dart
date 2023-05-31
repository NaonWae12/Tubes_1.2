import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Navigator.dart';

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(top: 110, bottom: 70),
                child: Image.asset('assets/Unit 3c2.png')),
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'OTP',
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
                        hintText: 'Enter OTP Send in Email',
                        hintStyle: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    )),
                SizedBox(height: 24.0),
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
                        'Verify',
                        style: GoogleFonts.quicksand().copyWith(
                          color:
                              Colors.white, // Mengubah warna teks menjadi putih
                          fontSize: 16, // Mengubah ukuran font teks
                          fontWeight:
                              FontWeight.bold, // Mengatur gaya huruf italic
                        ),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Nyoba(),
                        //   ),
                        // );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
