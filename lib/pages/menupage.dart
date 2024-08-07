import 'dart:convert';

import 'package:anime/components/button.dart';
import 'package:anime/pages/detail.dart';
import 'package:anime/pages/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';

class menupage extends StatefulWidget {
  const menupage({super.key});

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  var anime;

  void getanime() async {
    String url = ("https://kitsu.io/api/edge/anime");
    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);
    print(data);
    setState(() {
      anime = data;
    });
    print(data);
  }

  void initState() {
    getanime();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Center(child: Text(style: TextStyle(color: Colors.black), "アニメ")),
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: CarouselSlider(
              items: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.liveabout.com/thmb/EuzMFCouNw8IFMXsJj9rttEvCcg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-148520785-5ad9029f43a1030037b76966-5b92e966c9e77c008294ae38.jpg")),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text("hellow"),
                          SizedBox(
                            height: 45,
                          ),
                          // button(text: "watchNow", onTap: () {})
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1578632767115-351597cf2477?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text("hellow"),
                          SizedBox(
                            height: 45,
                          ),
                          // button(text: "watchNow", onTap: () {})
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://img.freepik.com/free-photo/anime-style-portrait-traditional-japanese-samurai-character_23-2151499109.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721520000&semt=ais_user")),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text("hellow"),
                          SizedBox(
                            height: 45,
                          ),
                          // button(text: "watchNow", onTap: () {})
                        ],
                      )
                    ],
                  ),
                )
              ],
              options: CarouselOptions(
                  aspectRatio: 2.0,
                  height: MediaQuery.of(context).size.height / 3,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeFactor: 0.4,
                  autoPlayAnimationDuration: Duration(seconds: 4)),
            ),
          ),
          // SizedBox(
          //   height: 25,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Dragon Ball Super 2"),
              SizedBox(
                width: 100,
              ),
              Text("4.9"),
              Icon(Icons.star),
            ],
          ),
          anime == null
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(anime["data"][index]
                                              ["attributes"]["posterImage"]
                                          ["original"])),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(25),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 300,
                                  child: Text(
                                    anime["data"][index]["attributes"]["titles"]
                                        ["en_jp"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                ),
                                Text("ACTION"),
                                Row(
                                  children: [
                                    Text("4.5"),
                                    SizedBox(width: 10),
                                    Icon(Icons.star),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                button(
                                    text: "details",
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return details(
                                            data: anime["data"][index],
                                          );
                                        },
                                      ));
                                    })
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
        ],
      ),
    );
  }
}
