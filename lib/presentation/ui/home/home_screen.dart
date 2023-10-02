import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6FBFF),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            32.heightBox,
            buildHomeCard(),
            20.heightBox,
            buildFeelingCard(),
            20.heightBox,
            buildMessageSeeAllText(),
            19.heightBox,
            buildMessagesList(),
            25.heightBox,
            Row(
              children: [
                buildCardCategoriess(
                    imagePath: "assets/images/woman in online meetings.png",
                    title: "Services"),
                14.widthBox,
                buildCardCategoriess(
                    imagePath: "assets/images/boy meditating.png",
                    title: "Wellness")
              ],
            ),
            14.heightBox,
            Row(
              children: [
                buildCardCategoriess(
                    imagePath:
                        "assets/images/side view of young man sitting at the desk with pen and thinking.png",
                    title: "Epiphany"),
                14.widthBox,
                buildCardCategoriess(
                    imagePath:
                        "assets/images/girl and boy with backpack reading book.png",
                    title: "Referral")
              ],
            )
          ],
        ));
  }

  Container buildMessagesList() {
    return Container(
        // width: 353,
        // height: 155,

        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(
                  0x33000000), // Box shadow color with alpha (0x33 for 20% opacity)
              offset: Offset(0, 0), // Offset in the x and y direction
              blurRadius: 10.0, // Blur radius
              spreadRadius: 0.0, // Spread radius
            ),
          ],
        ),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => Container(
            height: 1,
            color: const Color(0xffD2D2D2),
          ),
          itemCount: 4,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            height: 38,
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Appointment 2 Days Ago",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.23, // You can adjust the line height here
                      letterSpacing: 0, // No letter spacing
                      // textAlign: TextAlign.left,
                      // color: Colors.white, // Text color
                    ),
                  ),
                ),
                Image.asset("assets/images/Appointment 2 days ago-1 eye.png")
              ],
            ),
          ),
        ));
  }

  Expanded buildCardCategoriess(
      {required String imagePath, required String title}) {
    return Expanded(
      child: Container(
          // height: 168,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19302F60),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 12.0),
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 10.0, bottom: 21, left: 75, top: 25),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Center buildCategoriesCard() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum width
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19302F60),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 12.0),
                  child:
                      Image.asset("assets/images/woman in online meetings.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      right: 10.0, bottom: 21, left: 75, top: 25),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildMessageSeeAllText() {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Message",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff142E47)),
          ),
          Text(
            "See all",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 13,
              fontWeight: FontWeight.w500,
              height: 1.23,
              letterSpacing: 0,
              color: Color(0xff4A4B4B),
            ),
          ),
        ]);
  }

  Container buildFeelingCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white, // You can change the background color here

        boxShadow: const [
          BoxShadow(
            color: Color(
                0x33000000), // Box shadow color with alpha (0x33 for 20% opacity)
            offset: Offset(0, 0), // Offset in the x and y direction
            blurRadius: 10.0, // Blur radius
            spreadRadius: 0.0, // Spread radius
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
                margin: const EdgeInsets.only(left: 24),
                width: 118,
                height: 88,
                child: Image.asset('assets/images/Group 58.png')),
          ),
          16.widthBox,
          const Expanded(
            // flex: 2,
            child: Text("How are you\n feeling today?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }

  Container buildHomeCard() {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF142E47),
              Color(0xFF1B456F),
              Color(0xFF142E47),
            ],
            stops: [0, 0.6771, 1.0],
            transform: GradientRotation(220.04),
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //
          18.heightBox,
          const Text(
            "KBC School Demo",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 22, left: 21, bottom: 19, right: 21),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/70x70"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    10.heightBox,
                    const Text(
                      "Christin John",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    2.heightBox,
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffCAC5C5), // Color of the underline
                            width: 1.0, // Adjust the width of the underline
                          ),
                        ),
                      ),
                      child: const Text(
                        "Roll No: 101",
                        style: TextStyle(
                          color: Color(0xffCAC5C5),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset('assets/images/SVGRepo_iconCarrier.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
