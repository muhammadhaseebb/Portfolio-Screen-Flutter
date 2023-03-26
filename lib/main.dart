import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoSlabTextTheme(),
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final TextStyle myCategoryStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.grey[600],
  );
  final TextStyle myNumbersStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 236, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            padding: EdgeInsets.fromLTRB(360, 70, 10, 10),
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(left: 155.0, top: 10),
            child: Text("Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    fontFamily: GoogleFonts.poppins().fontFamily)),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 130),
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: const Image(
                    image: AssetImage('assets/pic1.jpg'),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 65.0, top: 20),
            child: Text("Muhammad Haseeb",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: GoogleFonts.poppins().fontFamily)),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
                "Hey! I'm Muhammad Haseeb. I'm Graphic designer doing freelancing and currently looking for opportunities. "),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Portfolio: https://www.behance.net/muhammadhaseeb32",
            ),
          ),

          // ye wala blue container ha
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 81, 0, 255),
                        borderRadius: BorderRadius.circular(50)),
                    margin: const EdgeInsets.only(top: 20, left: 80),
                    padding: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                    child: Row(
                      children: const [
                        Text(
                          "  Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 81, 0, 255),
                        borderRadius: BorderRadius.circular(50)),
                    margin: const EdgeInsets.only(top: 10, left: 140),
                    padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                    child: Row(
                      children: const [
                        Text(
                          "Contact  ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 10, bottom: 5),
                          height: 30,
                          width: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: AssetImage('assets/instagram.png'),
                            ),
                          ),
                        ),
                        const Text(
                          '_haseeb7',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 30, bottom: 5),
                          height: 30,
                          width: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: AssetImage('assets/facebook.png'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Muhammad Haseeb"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 30, bottom: 5),
                          height: 30,
                          width: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: AssetImage('assets/twitter.png'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("_Haseeb07"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
