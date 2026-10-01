import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        centerTitle: true, //center title horizontally
        titleTextStyle: const TextStyle(
          color: Color(0xFFE1306C),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/idk.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
               Column(
                 children: [
                   Text("67"),
                   Text("Posts")
                 ],
               ),
              Column(
                children: [
                  Text("1M"),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text("167"),
                  Text("Following")
                ],
              )


            ],

          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text("Gandi Ara",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text("Folk Singer",
                  style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 4),
                ],
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
