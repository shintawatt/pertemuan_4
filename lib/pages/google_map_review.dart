import 'package:flutter/material.dart';

class GoogleMapReview extends StatelessWidget {
  const GoogleMapReview({super.key});

  Widget _buildButton(IconData icon, String title) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(title, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Judul"), Text("Sub Judul")],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 4),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Image.asset(
              "assets/wisata.jpg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            _buildTitle(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton(Icons.call, "Call"),
                  _buildButton(Icons.navigation, "Route"),
                  _buildButton(Icons.share, "Share"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
