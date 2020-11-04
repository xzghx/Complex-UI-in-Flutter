import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_1/screenHelper/detailPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:  Color.fromRGBO(144,202,201,1),));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(144,202,201,1),
        body: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("To-dos",style: GoogleFonts.poppins(fontSize: 35,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                IconButton(icon: Icon(Icons.file_download), onPressed: () {},iconSize: 30,color: Color.fromRGBO(30,32,56,1),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_vhufulse.json'),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Christam Celebration",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18,color: Color.fromRGBO(44,43,61,1)),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on,color: Colors.grey[500],size: 20,),
                                  Text("758 Green Flat Apt, 305",style: GoogleFonts.poppins(color: Colors.grey[500],fontWeight: FontWeight.w600),),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                      margin: EdgeInsets.only(top: 5),
                                      width: MediaQuery.of(context).size.width/4.8,
                                      child: Stack(
                                        children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.grey[300],
                                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
                                            ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey[300],
                                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1536924430914-91f9e2041b83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:40),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey[300],
                                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1572348805897-a0ca00b77e5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Text("3 People",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey[600]),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.8,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage(tag: '1',)
                          ));
                        },
                        child: Hero(
                          tag: '1',
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                    angle: -0.14,
                                    child: Container(
                                      height: 400,
                                      width: 173,
                                      margin: EdgeInsets.only(left: 0,bottom: 25),
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
                                      width: 180,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("3",style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                          Text("REMAINDERS",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.bookmark,color: Color.fromRGBO(70,77,165,1),size: 40,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage(tag: '2',)
                          ));
                        },
                        child: Hero(
                          tag: '2',
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                    angle: -0.14,
                                    child: Container(
                                      height: 400,
                                      width: 173,
                                      margin: EdgeInsets.only(left: 0,bottom: 25),
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
                                      width: 180,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("5",style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                          Text("APPOINTMENTS",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.bookmark,color: Color.fromRGBO(70,77,165,1),size: 40,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage(tag: '3',)
                          ));
                        },
                        child: Hero(
                          tag: '3',
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                    angle: -0.14,
                                    child: Container(
                                      height: 400,
                                      width: 173,
                                      margin: EdgeInsets.only(left: 0,bottom: 25),
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
                                      width: 180,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("1",style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                          Text("SPORTS",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.bookmark,color: Color.fromRGBO(70,77,165,1),size: 40,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage(tag: '4',)
                          ));
                        },
                        child: Hero(
                          tag: '4',
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                    angle: -0.14,
                                    child: Container(
                                      height: 400,
                                      width: 173,
                                      margin: EdgeInsets.only(left: 0,bottom: 25),
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
                                      width: 180,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("6",style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                          Text("MISCELLANEOUS",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(30,32,56,1)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.bookmark,color: Color.fromRGBO(70,77,165,1),size: 40,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
