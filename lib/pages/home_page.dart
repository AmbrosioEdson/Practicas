import 'package:avatares/pages/drawer_y_stack_page.dart';
import 'package:flutter/material.dart';
import 'avatar_page.dart';
import 'alert_page.dart';
import 'alert_page2.dart';
import 'input_page.dart'; // Importa la nueva página de Inputs
import 'semana13_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Componentes'),
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: ListView( // Cambiado de Column a ListView para que se pueda desplazar si hay muchos elementos
          padding: EdgeInsets.all(20.0), // Añadido padding para que no toque los bordes
          children: [
            Image.asset(
              'assets/images/eldavid.jpg', // Ruta relativa de la imagen en tus activos
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20.0),
            Text(
              'Flutter Componentes',
              textAlign: TextAlign.center, // Centra el texto
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Avatar'),
                subtitle: Text('Ir a detalle de Avatar'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AvatarPage()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Alert'),
                subtitle: Text('Ir a detalle de Alert'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Alert2'),
                subtitle: Text('Ir a detalle de Alert2'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage2()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Inputs'),
                subtitle: Text('Ir a detalle de Inputs'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Drawer y Stack'),
                subtitle: Text('Ir a detalle de Drawer y Stack'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawerYStackPage()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFF004481), // BBVA blue color
                  child: Icon(Icons.login, color: Colors.white),
                ),
                title: Text(
                  'BBVA Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF004481),
                  ),
                ),
                subtitle: Text('Ir a la pantalla de inicio de sesión de BBVA'),
                trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF004481)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BBVALoginScreen()),
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}