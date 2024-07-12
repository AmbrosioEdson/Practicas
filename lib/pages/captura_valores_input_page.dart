import 'package:flutter/material.dart';

class CapturaValoresInputPage extends StatefulWidget {
  @override
  _CapturaValoresInputPageState createState() => _CapturaValoresInputPageState();
}

class _CapturaValoresInputPageState extends State<CapturaValoresInputPage> {
  String name = "";
  TextEditingController nameController = TextEditingController(text: "Por defecto");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capturando Inputs"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
              ),
              onChanged: (String value) {
                setState(() {
                  name = value;
                  print(name);
                });
              },
              onTap: () {
                print("ON TAP!!");
              },
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(nameController.text);
                // nameController.text = "Juan"; // Si deseas cambiar el texto del controlador
                // getNameData(); // Si deseas obtener datos de otra función
                // setState(() {}); // Si deseas actualizar el estado
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Color de fondo del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // Esquinas rectangulares
                ),
              ),
              child: Text(
                "Mostrar Valor!",
                style: TextStyle(color: Colors.white), // Color del texto
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Teclados",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getNameData() {
    print(nameController.text);
  }
}