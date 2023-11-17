import 'package:flutter/material.dart';
import 'package:tugas_submission_1/mysecondpage.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman Satu'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySecondPage()),
                );
              },
              child: const Text('Pindah ke Halaman Dua'),
            ),
          ],
        ),
      ),
    );
  }
}
