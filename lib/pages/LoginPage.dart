import 'package:flutter/material.dart';
import 'package:slcv/pages/AdminPage.dart';
import 'RegistartionPage.dart';

class LoginPage extends StatelessWidget {
const LoginPage({super.key});

@override
Widget build(BuildContext context) {
return  Scaffold(

  body: SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/main-logo.png',
            width: 250,
            height: 250,
            fit: BoxFit.contain,
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(250,10,250,10),
            shadowColor: const Color(0xFF2195F2),
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                    style: TextStyle(color: Colors.blue),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                    ),
                    style: TextStyle(color: Colors.blue),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Add login functionality here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AdminPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2195F2),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Add navigation to registration page here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistartionPage(),
                ),
              );
            },
            child: const Text(
              'Not yet registered? SignUp Now',
              style: TextStyle(
                color: Color(0xFF2195F2),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);
}

}