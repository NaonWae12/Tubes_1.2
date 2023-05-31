import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditClass extends StatefulWidget {
  const EditClass({super.key});

  @override
  State<EditClass> createState() => _ModulState();
}

class _ModulState extends State<EditClass> {
  String selectedValue = 'Option 1';
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: <Widget>[
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    child: Image.asset('assets/Left.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 50,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Edit Class',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: const Color.fromARGB(255, 31, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 7,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Title',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 10,
                  right: 25,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'HTML Expert',
                        hintStyle: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 7,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Category',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 10,
                  right: 25,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items:
                          options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 31, 30, 30),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 7,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Deskription',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 10,
                  right: 25,
                ),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your description',
                        hintStyle: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: const Color.fromARGB(255, 31, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 7,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Level',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 25,
              //     top: 10,
              //     right: 25,
              //   ),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //           color:
              //               Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
              //           spreadRadius: 4,
              //           blurRadius: 5,
              //           offset: Offset(0, 3),
              //         ),
              //       ],
              //     ),
              //     padding: EdgeInsets.symmetric(horizontal: 12),
              //     child: DropdownButtonHideUnderline(
              //       child: DropdownButton<String>(
              //         value: selectedLevel,
              //         icon: Icon(Icons.arrow_drop_down),
              //         iconSize: 24,
              //         elevation: 16,
              //         style: TextStyle(
              //           fontSize: 16,
              //           color: Colors.black,
              //         ),
              //         onChanged: (String? newValue) {
              //           setState(() {
              //             selectedValue = newValue!;
              //           });
              //         },
              //         items:
              //             options.map<DropdownMenuItem<String>>((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(
              //               value,
              //               style: GoogleFonts.quicksand(
              //                 textStyle: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.bold,
              //                   color: const Color.fromARGB(255, 31, 30, 30),
              //                 ),
              //               ),
              //             ),
              //           );
              //         }).toList(),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Fungsi yang akan dijalankan saat container "Start" di klik
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 95,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 45, 44, 44),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 117, 116, 116)
                                  .withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Start',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 198, 197, 197),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
