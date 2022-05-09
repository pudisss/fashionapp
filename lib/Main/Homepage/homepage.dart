import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:provider/provider.dart";
import "../../data.dart";

import "package:google_fonts/google_fonts.dart";
import "catepage.dart";
import "package:animations/animations.dart";

class Homepage extends StatefulWidget {
  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List filepath = [
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];
  


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("assets/images/menu.png")
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset("assets/images/logo.png"),
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/notification.png")
          )
        ]
      ),
      body: SingleChildScrollView(child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 125,
             
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catefilepath.length,
                itemBuilder: (context, i) {
                  
                  return OpenContainer(
                    
                    openBuilder: (context, action) => new CatePage(catetitle[i],i),
                  transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) => Container(
                    width: 102,
                    height: 105,
                    margin: EdgeInsets.only(left: 25, top: 20),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 72,
                          width: 102,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(catefilepath[i])
                            )
                          )
                        ),
                        Container(
                          height: 30,
                          width: 102,
                          child: Center(
                            child: Text(catetitle[i], style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black,))
                          )
                        )

                      ]
                    )


                  ),
                  );
                }
              )
            ),
            Container(
              width: 325,
              height: 118,
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 242, 215, 1),
                    Color.fromRGBO(255, 219, 199, 1),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Flat",textAlign: TextAlign.left, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400))),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("50% OFF", style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w700))),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("On Women Bag", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)))
                      ]
                    )

                  ),
                  Container(
                    child: Image.asset("assets/images/bagsbanner.png")
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/Idk.png")
            ),
            Expanded(child: Container(
              
              margin: EdgeInsets.only(top: 40),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, i) {
                  return Container(
                    width: 325,
                    height: 181,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(filepath[i])
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(right: 140),
                      width: 181,
                      height: 181,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Epic", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white,)),
                          Text("Fashion Deal", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)),
                          Text("Sales", style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white)),
                          Text("50%-80% Off", style: GoogleFonts.poppins(fontSize: 20, color: Colors.white, fontWeight:FontWeight.w700)),
                          Container(
                            width: 77,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text("Shop Now", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.black))
                            )
                          )
                        ]
                      )
                      
                    )

          ]));
                }
              )

            ))
          ]

        )
      ))
    );
  }
}