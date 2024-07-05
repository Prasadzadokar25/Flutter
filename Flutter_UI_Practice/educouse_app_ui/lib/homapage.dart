import "package:educouse_app/coursePage.dart";
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  List courseList = [
    {
      "name": "UX Designer from Scratch.",
      "image": "assets/images/object2.png",
    },
    {
      "name": "Design Thinking The Beginner",
      "image": "assets/images/object3.png"
    },
    {
      "name": "UX Designer from Scratch.",
      "image": "assets/images/object2.png",
    },
    {
      "name": "Design Thinking The Beginner",
      "image": "assets/images/object3.png"
    },
  ];

  List gradientList = [
    [const Color.fromRGBO(197, 4, 98, 1), const Color.fromRGBO(80, 3, 112, 1)],
    [const Color.fromRGBO(0, 77, 228, 1), const Color.fromRGBO(0, 47, 135, 1)],
    [const Color.fromRGBO(197, 4, 98, 1), const Color.fromRGBO(80, 3, 112, 1)],
    [const Color.fromRGBO(0, 77, 228, 1), const Color.fromRGBO(0, 47, 135, 1)],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 65, left: 22, right: 22, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 28,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_active_outlined,
                      size: 28,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to New",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "Educourse",
                      style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    hintText: "    Enter your keyWord",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(143, 143, 143, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 243, 29, 29),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Course For You",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 240,
                    child: ListView.builder(
                      itemCount: courseList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: gotoCourse,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          courseList[index]["image"])),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: gradientList[
                                          index % courseList.length]),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              height: 240,
                              width: 190,
                              child: Text(
                                courseList[index]["name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    child: Text(
                      "Course By Category",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      getButtonColumn(
                          "   UI/UX   ", "assets/images/category1.png"),
                      getButtonColumn(
                          "   VISUAL  ", "assets/images/category2.png"),
                      getButtonColumn(
                          "ILLUSTRATON", "assets/images/category3.png"),
                      getButtonColumn(
                          "   PHOTO   ", "assets/images/category4.png"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getButtonColumn(String name, String imagePath) {
    return Column(children: [
      Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Color.fromRGBO(25, 0, 56, 1),
        ),
        child: Image.asset(imagePath),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(name, style: TextStyle()),
    ]);
  }

  void gotoCourse() {
    Navigator.push(context,
        PageRouteBuilder(pageBuilder: (context, animantion, _) {
      return CouseUI();
    }));
  }
}
