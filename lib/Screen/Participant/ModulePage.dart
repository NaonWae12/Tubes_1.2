import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PageQuiz1.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Modul extends StatefulWidget {
  const Modul({super.key});

  @override
  State<Modul> createState() => _ModulState();
}

class _ModulState extends State<Modul> {
  // final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";

  // late YoutubePlayerController _controller;

  // @override
  // void initState() {
  //   final videoID = YoutubePlayer.convertUrlToId(videoURL);

  //   _controller = YoutubePlayerController(
  //     initialVideoId: videoID!,
  //     flags: const YoutubePlayerFlags(
  //       autoPlay: false,
  //     ),
  //   );
  //   super.initState();
  // }

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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Kembali ke halaman sebelumnya
                    },
                    child: Container(
                      child: Image.asset('assets/Left.png'),
                    ),
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
                        'Java Aplication',
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
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  width: 161,
                  height: 100,
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
                  child: Image.asset('assets/vid.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 7, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Pengenalan Java',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 200,
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
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: const Color.fromARGB(255, 31, 30, 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 7, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Struktur Java',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
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
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: const Color.fromARGB(255, 31, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Align(
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
                              color: Color.fromARGB(255, 222, 218, 218),
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
                                'Forum',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 37, 37, 37),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Quiz1()),
                          );
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
                                'Quiz',
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
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     // YoutubePlayer(
      //     //   controller: _controller,
      //     //   showVideoProgressIndicator: true,
      //     // )

      //   ],
      // ),