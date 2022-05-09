import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "package:google_fonts/google_fonts.dart";
import "../../data.dart";

class CatePage extends StatefulWidget {
  final title;
  final index;
  CatePage(this.title, this.index);

  @override
  State<CatePage> createState() => _CatePageState(this.title, this.index);
  
}

class _CatePageState extends State<CatePage> {
  final String title;
  final int index;
  _CatePageState(this.title, this.index);

  
  @override
  
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap:() {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
          
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(title, style: GoogleFonts.poppins(color: Colors.black, fontSize: 16))
        
      ),
      body: SingleChildScrollView(child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 327,
              height: 118,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 234, 0, 1),
                    Color.fromRGBO(255, 235, 0, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/banner4.png")
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    
                    child: Column(
                      
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20, left: 5),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "25%",
                                  style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                                  
                                ),
                                TextSpan(
                                  text: "Extra Discount",
                                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black)
                                )
                              ]
                            )
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 5),
                          child: Text("On Women Eyewear", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ))
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 5, right: 200),
                          width: 77,
                          height: 21,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Shop now", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.black)))
                          )
                        
                      ]
                    )

                  ),
                  
                ]
              )
              
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/Idk.png")
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 50),
              

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Container(
                    width: 326,
                    height: 118,
                    margin: EdgeInsets.only(left: 24, right: 24, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: productcolor[i],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(producttitle[i], style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                        ),
                        Container(
                          child: Image.asset(productcate[i])
                        ),
                        
                      ]
                    )


                  );
                }
              )

            )

            
          ]
        )

      )
    );
  }
}