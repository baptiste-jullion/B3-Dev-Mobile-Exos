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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Header(),
          CustomDivider(),
          About(),
          CustomDivider(),
          Friends(),
          CustomDivider(),
          Feed(),
        ],
      )),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      height: 32,
      indent: 16,
      endIndent: 16,
      color: Colors.grey,
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                              "lib/assets/images/john_doe.jpg",
                              width: 48,
                              height: 48,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("John Doe"),
                        ],
                      ),
                      Text("2 hours ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ]),
                Divider(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "lib/assets/images/mountain.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text("120"),
                        Text("likes"),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.comment),
                        Text("14"),
                        Text("comments"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        FeedCard(),
        FeedCard(),
        FeedCard(),
      ],
    );
  }
}

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friends",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black12, width: 6)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 120,
                      height: 200,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(spacing: 8, children: [
          SizedBox(
              width: double.infinity,
              child: Text(
                "About me...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          Column(
            spacing: 4,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.home_rounded),
                  Text("San Francisco, CA - USA")
                ],
              ),
              Row(
                spacing: 8,
                children: [Icon(Icons.cases_rounded), Text("CTO @ Google")],
              ),
              Row(
                spacing: 8,
                children: [Icon(Icons.code), Text("W-Language")],
              )
            ],
          )
        ]));
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.asset(
              "lib/assets/images/mountain.jpg",
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: -72,
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.circular(144)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(144),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        "lib/assets/images/john_doe.jpg",
                        height: 144,
                        width: 144,
                      ),
                    )))
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 80),
            child: Center(
              child: Text(
                "John Doe",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..."),
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                OutlinedButton(
                    onPressed: () => (), child: Text("Edit profile")),
                FilledButton(onPressed: () => (), child: Icon(Icons.add))
              ],
            ))
      ],
    );
  }
}
