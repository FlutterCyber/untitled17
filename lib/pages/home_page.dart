import 'package:flutter/material.dart';
import 'package:untitled17/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, SecondPage.id);
          }, icon: Icon(Icons.arrow_forward),),
        ],
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              //padding: EdgeInsets.only(left:10,right: 10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: const TextField(
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black),
                  //tagiga chizadigan chizigini yo'qotish uchun kk
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //padding: EdgeInsets.only(left:10,right: 10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: const TextField(
                obscureText: true,
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black),
                  //tagiga chizadigan chizigini yo'qotish uchun kk
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
