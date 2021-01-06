import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_2/utils/constants/color_pallete.dart';

class SlidingComp extends StatelessWidget {
  ColorPallete pallete = ColorPallete();
  List<String> imgUrls = [
    'https://images.unsplash.com/photo-1565679871226-33cfa91bedae?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1572965733194-784e4b4efa45?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1521165946603-4019d13d7d46?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1441786485319-5e0f0c092803?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW9kZWwlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1541577141970-eebc83ebe30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1vZGVsJTIwbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1vZGVsJTIwbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
          color: pallete.primaryDark,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: imgUrls.length,
        itemBuilder: (context, index) {
          if (index == (imgUrls.length - 1)) {
            return Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.md_wallet,
                    size: 30,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Send",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 13)),
                ],
              ),
            );
          } else {
            return Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(imgUrls[index]), fit: BoxFit.cover)),
            );
          }
        },
      ),
    );
  }
}
