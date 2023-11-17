import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key});
  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Masukkan Status',
                  contentPadding: EdgeInsets.all(18.0),
                  suffixIcon: IconButton(
                    padding: EdgeInsets.all(14),
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _inputText = _controller.text;
                      });
                    },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Status Aplikasi: $_inputText'),
          ],
        ),
      ),
    );
  }
}
