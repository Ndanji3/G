
import 'package:flutter/material.dart';
import 'package:animated_switch/animated_switch.dart';
import 'package:loginsignup/Signup.dart';
import 'Home.dart';
import 'package:get/get.dart';
import 'bottom_nav_bar.dart';
import 'Signup.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.15),
                      Colors.black.withOpacity(0.5),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Welcome To GIIH',style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,

                ),),
                const SizedBox(height: 30,),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      label: Text('Username'),
                      fillColor: Color(0xffD8D8DD),
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text('Password'),
                      suffixIcon: Icon(Icons.visibility_off),
                      fillColor: Color(0xffD8D8DD),
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19,top: 8,right: 19),
                  child: Row(
                    children: [
                      AnimatedSwitch(
                        colorOff: Color(0xffA09F99),
                      ),
                      SizedBox(width: 5,),
                      Text('Remember me',style: TextStyle(
                        color: Colors.grey,
                      ),),
                      Spacer(),
                      Text("Forgot Password",style: TextStyle(
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: const BoxDecoration(




                  ),

                  child:

                  ElevatedButton(
                    child: const Text('login', style: TextStyle(color: Colors.blue),),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyBottomNavBar()),
                      );
                    },

                  ),

                ),
                const SizedBox(height: 15,),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0,right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100.0,top: 30),
                  child: Row(
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                        color: Colors.grey,
                      ),),
                      Text("Sign up",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18


                      ),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
