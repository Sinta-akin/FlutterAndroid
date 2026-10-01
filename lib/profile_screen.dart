import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
      ),
    ),
      home:const HomeView(),
    );
  }
}


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recently played',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.history), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings_outlined), onPressed: () {}),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Recently Played Circular Avatars
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildArtistAvatar('Lana Del Rey', Colors.brown),
                    _buildArtistAvatar('Marvin Gaye', Colors.grey),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // 2. Wrapped Header Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      color: Colors.purple.shade900,
                    ),
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('#SPOTIFYWRAPPED', style: TextStyle(fontSize: 10, color: Colors.grey)),
                        Text('Your 2021 in review', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // 3. Wrapped Square Cards
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildSquareCard('Your Top Songs 2021', Colors.lime.shade300),
                    _buildSquareCard('Your Artists Revealed', Colors.indigo.shade300),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // 4. Editor's Picks Section
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Editor\'s picks',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildSquareCard(
                      'Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone',
                      Colors.green.shade900,
                    ),
                    _buildSquareCard(
                      'Mitski, Tame Impala,\nGlass Animals, Charli XCX',
                      Colors.teal.shade300,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for the circular artist profile
  Widget _buildArtistAvatar(String name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: color,
            child: const Icon(Icons.person, size: 40, color: Colors.white54),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  // Helper method for the square album/playlist covers
  Widget _buildSquareCard(String subtitle, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 140,
            color: color,
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 140, // Match container width to wrap text
            child: Text(
              subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.grey, height: 1.3),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}