import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  List storyList = [
    {
      "name": "Prasad zadokar",
      "url":
          "https://hips.hearstapps.com/hmg-prod/images/nature-captions-1-1672892626.jpg",
      "isLike": false
    },
    {
      "name": "Om zadokar",
      "url":
          "https://xoxobella.com/wp-content/uploads/2020/08/instagram_captions_for_nature_photos-2.jpg",
      "isLike": false
    },
    {
      "name": "Ankush Bhichewar",
      "url":
          "https://hips.hearstapps.com/hmg-prod/images/nature-captions-3-1672892657.jpg",
      "isLike": false
    },
    {
      "name": "Soham Landge",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
    {
      "name": "prasad zadokar",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
    {
      "name": "prasad zadokar",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
    {
      "name": "om zadokar",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
    {
      "name": "om zadokar",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
    {
      "name": "Ganesh Thokal",
      "url":
          "https://i.pinimg.com/originals/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg",
      "isLike": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.chat_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 39,
                  child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: Image.asset("assets/images/profilepic.png"),
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
            // width: 100,
          ),
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.71,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: storyList.length,
                itemBuilder: (context, index) {
                  return Container(
                    //width: 100,
                    color: Colors.black,
                    child: Column(children: [
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.blue,
                            child: Image.asset("assets/images/profilepic.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                storyList[index]["name"],
                                style: const TextStyle(color: Colors.white),
                              ),
                              const Text(
                                "home, india",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 260,
                        width: 390,
                        color: Colors.amber,
                        child: Image.network(storyList[index]["url"]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              storyList[index]["isLike"] =
                                  !storyList[index]["isLike"];
                              setState(() {});
                            },
                            child: (storyList[index]["isLike"] == false)
                                ? const Icon(
                                    Icons.favorite_border_sharp,
                                    color: Colors.white,
                                  )
                                : const Icon(Icons.favorite, color: Colors.red),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.comment_rounded,
                              color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.send, color: Colors.white),
                          const SizedBox(
                            width: 7,
                          ),
                          const Spacer(),
                          const Icon(Icons.bookmark_add_outlined,
                              color: Colors.white),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
                  );
                },
              ),
            )
          ])
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_outlined,
              color: Colors.white,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
              size: 28,
            ),
            label: '',
          ),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
