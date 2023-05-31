import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<ChartPage> {
  double _rating = 3.0;

  List<Recommendation> recommendations = [
    Recommendation(
        image: 'assets/java.png',
        title: 'Java Application',
        level: 'Level Beginner',
        registered: '13.252 Registered',
        price: 'Rp. 99.000',
        trash: 'assets/Trash.png'),
    Recommendation(
        image: 'assets/c.png',
        title: 'C Fundamental',
        level: 'Level Intermediate',
        registered: '9.876 Registered',
        price: 'Rp. 99.000',
        trash: 'assets/Trash.png'),
    Recommendation(
        image: 'assets/js.png',
        title: 'JavaScript Project',
        level: 'Level Advanced',
        registered: '7.543 Registered',
        price: 'Rp. 99.000',
        trash: 'assets/Trash.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, top: 50),
                alignment: Alignment.center,
                child: Text(
                  'Cart',
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
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                              recommendation: recommendations[index]),
                        ),
                      );
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
                          recommendation.level +
                              '. ' +
                              recommendation.registered,
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
                        padding: EdgeInsets.only(top: 20, right: 15),
                        alignment: Alignment.topRight,
                        child: Image.asset(recommendation.trash)),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, right: 15),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        recommendation.price,
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 57, 57, 57),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
  final String registered;
  final String price;
  final String trash;

  Recommendation({
    required this.image,
    required this.title,
    required this.level,
    required this.registered,
    required this.price,
    required this.trash,
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
            SizedBox(height: 10),
            Text(
              recommendation.registered,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
