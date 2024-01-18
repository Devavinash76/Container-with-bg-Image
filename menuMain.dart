import 'package:flutter/material.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({super.key});

  @override
  _MenuMainState createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "Main Course",
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 18,
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3.6,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              // Background Image
              Image.asset(
                'assest/menu-bg.jpg',
                fit: BoxFit.fill,
                width: double.infinity, // Set width to fill the parent
                height: 457,
              ),
              Container(
                color: Colors.black
                    .withOpacity(0.5), // Adjust the opacity as needed
                width: double.infinity, // Set width to fill the parent
                height: 457,
              ),

              // Content
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white.withOpacity(0.5), width: 0.5),
                  // borderRadius: BorderRadius.circular(8.0),
                ),
                height: 439, // Set the height to match the image height
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-vector/colorful-cocktail-neon-sign_23-2147823238.jpg?w=740&t=st=1705518724~exp=1705519324~hmac=e1b1f7e425a9f866cd06741fe6c6da2c244825b107cbef55765adce5360a7054'),
                          ),
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assest/veg.png",
                                    scale: 15,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Veg",
                                    style: TextStyle(
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "(Choose any 2)",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Replace the existing SizedBox with this code
                                  SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Item $index',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFD9D9D9),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1, // Width of the white vertical border
                              color: Colors.white.withOpacity(0.5),
                              height: 250, // Height of the container, adjust as needed
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assest/nonveg.png",
                                    scale: 15,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Non Veg",
                                    style: TextStyle(
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "(Choose any 2)",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Replace the existing SizedBox with this code
                                  SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Item $index',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFD9D9D9),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 400,
                          height: 25,
                          color: Color(0xFFb2d62c),
                          child: Center(
                            child: Text(
                              "PARTWITTY",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 8,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
