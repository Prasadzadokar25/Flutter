import "package:flutter/material.dart";

import "homapage.dart";

class CouseUI extends StatefulWidget {
  const CouseUI({super.key});
  @override
  State createState() => _CouserUI();
}

class _CouserUI extends State {
  List gradientList = [
    [const Color.fromRGBO(197, 4, 98, 1), const Color.fromRGBO(80, 3, 112, 1)],
    [const Color.fromRGBO(0, 77, 228, 1), const Color.fromRGBO(0, 47, 135, 1)],
  ];

  List topicList = [1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradientList[0],
              begin: Alignment.topCenter,
              end: Alignment.center),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: getHomePage,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Text(
                    "UX Designer from Scratch.",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Basic guideline & tips & tricks for how to become a UX designer easily.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(228, 205, 225, 1)),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.5,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(0, 82, 178, 1),
                          radius: 19,
                          child: Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Author : ",
                        style: TextStyle(
                            color: Color.fromARGB(133, 255, 255, 255),
                            fontSize: 17),
                      ),
                      Text(
                        "Jenny:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "4.8:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 146, 0, 1),
                        size: 20,
                      ),
                      Text(
                        "(20 review)",
                        style: TextStyle(
                            color: Color.fromARGB(113, 255, 255, 255),
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 3),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(
                  itemCount: topicList.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 25, right: 25),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(31, 31, 31, 0.252),
                            blurRadius: 40,
                          )
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 55,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(230, 239, 239, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Introduction",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text ... ",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getHomePage() {
    Navigator.push(context,
        PageRouteBuilder(pageBuilder: (context, animation, _) {
      return Home();
    }));
  }
}
