import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
var h;
var w;

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool eye = false;
  @override
  void initState() {
    // eye = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     // h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: Icon(Icons.arrow_back_rounded,
          color: Colors.white,
          ),
          elevation: 0,
          backgroundColor: Colors.blueGrey.shade800,
        ),
        backgroundColor: Colors.blueGrey.shade800,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Center(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'assets/img_3.png',
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.05,
                    fit: BoxFit.contain,
                  ),
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   color: Colors.indigo
                  // ),
                ),
              ),
                Text('Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade700
                    ),
                    child: TextFormField(
                        controller: email,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        label: Text('Email',style: TextStyle(
                          color: Colors.white
                        ),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade700
                    ),
                    child:
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      controller: password,
                      obscureText: !eye,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: Icon(
                          // eye ? Icons.visibility_outlined
                          //     :
                        Icons.visibility_off_outlined,
                          color: Colors.indigoAccent,
                          size: 22,
                        ),
                      ),
                    ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(Colors.indigoAccent),
                            activeColor: Colors.indigoAccent,
                            value: eye,
                              onChanged: (value) {
                              eye = value!;
                              setState(() {

                              });
                              },

                          ),
                          Text('Show Password',style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Text('Forgot Password ?',style: TextStyle(color: Colors.indigoAccent,),)
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
            
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*1,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigoAccent,
                      ),
                      child: Center(
                        child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.001,
                        width: MediaQuery.of(context).size.width*0.25,
                        color: Colors.grey,
                      ),
                      // VerticalDivider(
                      //   color: Colors.blueGrey.shade800,
                      //   thickness: 2,
                      //   // height: 30,
                      //   indent: 20,
                      //   endIndent: 20,
                      // ),
                      Text('Or Login With',style: TextStyle(
                        color: Colors.grey
                      ),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.001,
                        width: MediaQuery.of(context).size.width*0.25,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey.shade700,
                        ),
                        child: Image.asset(
                          'assets/google-logo-png.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey.shade700,
                        ),
                        child: Image.asset(
                          'assets/facebook.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey.shade700,
                        ),
                        child: Image.asset(
                          'assets/twitter.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Don't have an Account ?", style: TextStyle(
                  color: Colors.white
                ),),
                Text("Sign Up", style: TextStyle(
                    color: Colors.indigoAccent
                ),),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
