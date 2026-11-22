import 'package:ai39a/constants/app_images.dart';
import 'package:ai39a/view/authentication/widgets/social_media_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              "Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: SocialMediaCard(
                  label: "Facebook",
                  imagePath: Facebook,
                ),
              ),
              Expanded(
                child: SocialMediaCard(imagePath: Google, label: "Google"),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: Divider(color: Colors.grey, thickness: 1, height: 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text("OR"),
              ),
              Expanded(
                child: Divider(color: Colors.grey, thickness: 1, height: 1),
              ),
            ],
          ),

          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              // label: Text("Email"),
              hint: Text("abc@gmail.com"),
              filled: true,
              fillColor: Colors.grey.shade100,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),

              // errorBorder: ,
              // disabledBorder: ,
            ),
          ),

          SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            obscureText: visibility,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
                icon: Icon(
                  visibility == true ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              // prefixIcon: Icon(Icons.password),
              // label: Text("Email"),
              hint: Text("*******"),
              filled: true,
              fillColor: Colors.grey.shade100,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),

              // errorBorder: ,
              // disabledBorder: ,
            ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Forget Password?")],
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                ),
                onPressed: () {}, child: Text("Log In")),
          ),
        ],
      ),

      // bottomNavigationBar: ,
      // drawer: ,
      // floatingActionButton: ,
    );
  }
}