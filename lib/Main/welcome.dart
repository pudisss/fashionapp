import 'package:deliveryapp/Main/Homepage/homepages.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../data.dart";
import "loginpage/loginpage.dart";
import "Homepage/homepage.dart";


class Welcomepage extends StatefulWidget {
  const Welcomepage({ Key? key }) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Welcomepng.png")
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Image.asset("assets/images/biglogo.png")
            ),
            Spacer(

            ),
            
      
            Container(
              width: MediaQuery.of(context).size.width,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 40),
                    width: 354,
                    height: 72,
                    child: Text("Discover the latest womenswear",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Guess = true;
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => Homepages(),
                        ));
                      },
                      child: Text("Or continue as guest", style: GoogleFonts.poppins(fontSize: 16, color: Colors.black.withOpacity(0.5)))
                    )
                  ),
                  Container(
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginpage()
                        )
                      );
                    },
                    child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 327,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)
                    ),
                    child: Center(
                      child: Text("Login")
                    )))
                  ),
                  Container(
                    width: 327,
                    height: 48,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text("Create an account", style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400))
                    )
                  )
                ]
              )
            )
          ]
        )

      )
    );
  }
}