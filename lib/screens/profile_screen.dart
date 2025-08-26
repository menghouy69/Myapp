import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  final String userEmail;

  const ProfileScreen({
    Key? key,
    required this.userName,
    required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            child: Text(userName[0], style: TextStyle(fontSize: 40)),
          ),
          SizedBox(height: 20),
          Text(userName, style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),
          Text(userEmail, style: TextStyle(fontSize: 18, color: Colors.grey)),
          SizedBox(height: 30),
          ElevatedButton.icon(
            icon: Icon(Icons.logout),
            label: Text("Logout"),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
