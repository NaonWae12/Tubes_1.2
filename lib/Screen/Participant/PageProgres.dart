import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'PagesClass.dart';
import 'ChartPage.dart';
import 'PageOtp.dart';

class Progres extends StatefulWidget {
  const Progres({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Progres> {
  double _rating = 3.0;

  List<Recommendation> recommendations = [
    Recommendation(
      image: 'assets/java.png',
      title: 'Java Application',
      level: 'Level Beginner',
      price: 'Rp. 99.000',
      trash: 'assets/Trash.png',
      icright: 'assets/icon _right.png',
    ),
    Recommendation(
      image: 'assets/c.png',
      title: 'C Fundamental',
      level: 'Level Intermediate',
      price: 'Rp. 99.000',
      trash: 'assets/Trash.png',
      icright: 'assets/icon _right.png',
    ),
    Recommendation(
      image: 'assets/js.png',
      title: 'JavaScript Project',
      level: 'Level Advanced',
      price: 'Rp. 99.000',
      trash: 'assets/Trash.png',
      icright: 'assets/icon _right.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 30),
                alignment: Alignment.center,
                child: Text(
                  'Progres',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 223, 217, 217),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search For Product...",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recommendations.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Navigasi ke halaman yang diinginkan sesuai dengan indeks item
                      if (index == 0) {
                        // Navigasi ke halaman Profile
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageClass()),
                        );
                      } else if (index == 1) {
                        // Navigasi ke halaman Akun
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChartPage()),
                        );
                      } else if (index == 2) {
                        // Navigasi ke halaman Ubah Password
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpPage()),
                        );
                      }
                      // Tambahkan penanganan navigasi untuk item lainnya sesuai kebutuhan
                    },
                    child: buildRecommendationItem(recommendations[index]),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRecommendationItem(Recommendation recommendation) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, right: 13, bottom: 8.0, left: 13),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      recommendation.image,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recommendation.title,
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          recommendation.level,
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: _rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 1,
                              itemSize: 30,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              },
                            ),
                            Text(
                              '$_rating',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(right: 20),
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          recommendation.icright,
                          height: 100,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Recommendation {
  final String image;
  final String title;
  final String level;
  final String price;
  final String trash;
  final String icright;

  Recommendation({
    required this.image,
    required this.title,
    required this.level,
    required this.price,
    required this.trash,
    required this.icright,
  });
}

class DetailPage extends StatelessWidget {
  final Recommendation recommendation;

  const DetailPage({required this.recommendation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(recommendation.image),
            SizedBox(height: 20),
            Text(
              recommendation.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              recommendation.level,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
