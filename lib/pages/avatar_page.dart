import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.orange,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/PERFIL.jpeg'),
          ),
          SizedBox(width: 30),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/PERFIL.jpeg'),
            ),
            SizedBox(height: 10.0),
            Text(
              'Josias Ambrosio',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.orange,
                ),
                title: Text(
                  '+51 940172709',
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                title: Text(
                  'JosiasAmbrosio@uncp.edu.pe',
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}
