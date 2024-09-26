import 'package:flutter/material.dart';
import 'package:spine_app/login.dart';

class LoginNext extends StatefulWidget {
  const LoginNext({Key? key}) : super(key: key);

  @override
  State<LoginNext> createState() => _LoginNextState();
}

class _LoginNextState extends State<LoginNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 10,
              right: 10,
              left: 10,
              top: 10,
              // width: 10,
              child: Image.asset('assets/img_2.png')),
          Positioned(
            bottom: 50,
            right: 35,
            child:
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));

            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigoAccent,
              ),
              child: Center(
                child: Text('Are You Ready',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
