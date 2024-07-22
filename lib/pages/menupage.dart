import 'package:anime/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class menupage extends StatefulWidget {
  const menupage({super.key});

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 154, 154),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: const Color.fromARGB(255, 21, 17, 17)),
        title:
            Center(child: Text(style: TextStyle(color: Colors.black), "アニメ")),
      ),
      body: Column(
        children: [
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
          SizedBox(
            height: 25,
          ),
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
          Expanded(
            child: ListView.builder(
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
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1578632767115-351597cf2477?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
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
                          Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                              "SOLO LEVELING"),
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
                          button(text: "watchNow", onTap: () {})
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
