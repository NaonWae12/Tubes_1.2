import 'package:flutter/material.dart';
import '../Home/Participant/HomeSlider.dart';
import 'MyClass.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 15),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchWidget(
              controller: _textEditingController,
              onChanged: (value) {
                // Lakukan aksi yang diinginkan saat nilai pencarian berubah
                // Misalnya, perbarui daftar tampilan dengan hasil pencarian yang relevan
              },
            ),
          ),
          SizedBox(height: 55),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyClass(),
                          ),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(
                            255,
                            int.parse('FF', radix: 16),
                            int.parse('95', radix: 16),
                            int.parse('5B', radix: 16),
                          ),
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
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icHtml.png',
                              width: 160,
                              height: 190,
                            ),
                            Text(
                              'HTML',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Carousel(),
                          ),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(
                            255,
                            int.parse('E9', radix: 16),
                            int.parse('4C', radix: 16),
                            int.parse('DB', radix: 16),
                          ),
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
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/c_sharp.png',
                              width: 160,
                              height: 190,
                            ),
                            Text(
                              'C#',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Carousel(),
                          ),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF4FB0FF),
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
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/java.png',
                              width: 160,
                              height: 190,
                            ),
                            Text(
                              'Java ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Carousel(),
                          ),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 230, 67, 1),
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
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/js.png',
                              width: 160,
                              height: 190,
                            ),
                            Text(
                              'JavaScript',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchWidget({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 223, 217, 217),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
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
    );
  }
}
