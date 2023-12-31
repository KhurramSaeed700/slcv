import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        backgroundColor: Colors.blue[500],
        elevation: 23,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
        ],
      ),
      drawer:   Drawer(
          backgroundColor: Colors.white,
          child:  Column(
            children: [
              Image.asset(
              'lib/assets/main-logo.png'
            ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search by Image',
                suffixIcon: Icon(Icons.camera_alt_outlined),
              ),
            ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Add camera',
                  suffixIcon: Icon(Icons.add_a_photo_outlined),
                ),
              ),
          ],
          ),
        ),

    );
  }

}