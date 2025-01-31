import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade400, Colors.red.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SazónApp',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),
              onPressed: () {},
              child: Text("Iniciar Sesión"),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterScreen())),
              onPressed: () {},
              child: Text("Registrarse"),
            ),
          ],
        ),
      ),
    );
  }
}
