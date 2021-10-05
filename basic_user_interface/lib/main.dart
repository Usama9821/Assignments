import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
          leading: Icon(Icons.menu, color: Colors.black),
          actions: [
            Padding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                child: Icon(
                  // I have used an alternative icon here.
                  Icons.filter,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 2.9 / 1,
                    // this is to match the aspect ratio of the ui elements
                    crossAxisSpacing: 10, mainAxisSpacing: 14,
                    children: [
                      gridviewItem(
                          Color.fromRGBO(
                            0,
                            136,
                            255,
                            1,
                          ),
                          Icons.fire_extinguisher,
                          // Using an alternate icon
                          "Popularity"),
                      gridviewItem(
                        Color.fromRGBO(
                          132,
                          92,
                          238,
                          1,
                        ),
                        Icons.calendar_today,
                        "End Date",
                      ),
                      gridviewItem(
                        Color.fromRGBO(
                          255,
                          72,
                          88,
                          1,
                        ),
                        Icons.video_collection,
                        "Newest",
                      ),
                      gridviewItem(
                        Color.fromRGBO(
                          255,
                          186,
                          0,
                          1,
                        ),
                        Icons.money_off,
                        "Most Funded",
                      )
                    ],
                  ),
                ),
                // Adding sizedbox for some spacing
                SizedBox(
                  height: 35,
                ),
                // Adding the next widget
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                // Adding a sizedbox again
                SizedBox(
                  height: 28,
                ),
                // Adding the next widget
                Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  child: Expanded(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'images/img.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // adding another text widget over this
                              Container(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 18,
                                      top: 24,
                                    ),
                                    child: Text(
                                      "Poor Kids",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          // adding another sized box
                          SizedBox(
                            height: 36,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "224",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("DONARS",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.2,
                                      ))
                                ],
                              ),
                              // Copying the above column and pasting it two times
                              Column(
                                children: [
                                  Text(
                                    "\$ 6,000",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("RAISED",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.2,
                                      ))
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$ 7,000",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("GOAL",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.2,
                                      ))
                                ],
                              ),
                            ],
                          ),
                          // Adding another sizedbox
                          SizedBox(
                            height: 12,
                          ),
                          // Slider for displaying the amount raised
                          SliderTheme(
                            child: Slider.adaptive(
                              value: 90,
                              min: 0,
                              max: 100,
                              onChanged: null,
                            ),
                            data: SliderTheme.of(context).copyWith(
                              disabledActiveTrackColor: Color.fromRGBO(
                                255,
                                70,
                                87,
                                1,
                              ),
                              trackHeight: 4,
                              thumbColor: Colors.transparent,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }

  Widget gridviewItem(
    color,
    icon,
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          36,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
