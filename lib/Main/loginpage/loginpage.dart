import 'package:deliveryapp/Main/Homepage/homepages.dart';
import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:provider/provider.dart";
import "../../authentication.dart";
import "../Homepage/homepage.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  Future<void> signinWithGoogle() async {
    await Authentification.Signin();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Homepage()
      )
    );
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Image.asset("assets/images/biglogo.png"),
            
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Text("Welcome to Login", style:GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w600))
            ),
            Container(
              child: Text("Please enter below details to login to your account",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)))
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: 327,
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)
)
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.black.withOpacity(0.5)),                        
                          hintText: "Email",
                          hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black.withOpacity(0.5))


                          
                        )
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 327,
                      height:55,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(235, 235, 235, 1))
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black.withOpacity(0.5)),
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility_outlined)
                        ),
                        
                      )
                    )),
                ]
              )
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Homepages()));
              },
              child: Container(
              width: 327,
              height: 48,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Colors.black, 

              ),
              child: Center(
                child: Text("Login", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))
              )
            )),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: GestureDetector(
                child: Text("Forgot your password?", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black))
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: GestureDetector(
                child: Text("Or log in", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)))
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: signinWithGoogle,
                    child: Container(
                    width: 135.5,
                    height: 48,
                    color: Color.fromRGBO(244, 67, 54, 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset("assets/images/googleicon.png")
                        ),
                        Container(
                          child: Text("Google", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(244, 67, 54, 1)))
                        )
                      ]
                    )
                  )),
                  GestureDetector(child: Container(
                    width: 135.5,
                    height: 48,
                    color: Color.fromRGBO(32, 150, 243, 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset("assets/images/facebookicon.png")
                        ),
                        Container(
                          child: Text("Google", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(32, 150, 243, 1)))
                        )
                      ]
                    )
                  ))
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: GestureDetector(
                child: Text("Didn't have an account? Create one", style: GoogleFonts.poppins(fontSize: 15, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w400))
              )
            )
          ]
        )
      )

    );
  }
}