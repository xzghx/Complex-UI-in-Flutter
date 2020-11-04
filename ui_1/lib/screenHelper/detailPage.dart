import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  String tag;
  MyHomePage({this.tag});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:  Color.fromRGBO(70,77,166,1),));
    return Scaffold(
      backgroundColor: Color.fromRGBO(70,77,166,1),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: () {
          Navigator.of(context).pop();
        },),
        backgroundColor: Color.fromRGBO(70,77,166,1),
        elevation: 0,
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromRGBO(29,32,57,1),
          child: Icon(Icons.add,color: Colors.white,size: 40,),
        ),
      ),
      body: Center(
        child: Hero(
          tag: widget.tag,
          child: Container(
            height: 410,
            width: 280,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: -0.14,
                    child: Container(
                      height: 400,
                      width: 220,
                      margin: EdgeInsets.only(left: 0,bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: -0.06,
                    child: Container(
                      margin: EdgeInsets.only(left: 2,bottom: 15,top: 10),
                      height: 380,
                      width: 256,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: 0,
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 380,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(flex: 5,child: Text("Remainders",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),)),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(108,196,195,1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text("EDIT",style: GoogleFonts.gothicA1(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 310,
                              child: ListView(
                                children: [
                                  ListTile(
                                    title: Text("Work 1",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
                                    subtitle: Text("Details of work 1",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                                    leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("Work 2",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
                                    subtitle: Text("Details of work 2",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                                    leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("Work 3",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
                                    subtitle: Text("Details of work 3",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                                    leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  ListTile(tileColor: Colors.grey[300],
                                    title: Text("Work 4",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough),),
                                    subtitle: Text("Details of work 4",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)),
                                    leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(child: Icon(Icons.done,color: Colors.white,),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

