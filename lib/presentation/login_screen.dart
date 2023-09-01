import 'package:flutter/material.dart';
import 'package:projek/presentation/screen/home/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      const SizedBox(
                        height: 24,
                      ),
                      Image.asset(
                        'Learning.png',
                        width: 500,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      const Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Selamat Datang di Aplikasi Widya Edu\nAplikasi Latihan dan Konsultasi Soal',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const MyHomePage(title: 'My Learning App'),
                            ));
                      },
                      child: const Text('Login With Google')),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Login With Apple')),
                  const SizedBox(
                    height: 70,
                  )
                ])
              ]),
        ),
      ),
    );
  }
}
