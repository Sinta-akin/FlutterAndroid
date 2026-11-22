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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Softwarica",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.red,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.more_horiz, color: Colors.red, size: 25)],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/apple.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                ),
              ),
             Column(
               children: [
                 Text("174"),
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
                  Text("500k"),
                  Text("Followings")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
