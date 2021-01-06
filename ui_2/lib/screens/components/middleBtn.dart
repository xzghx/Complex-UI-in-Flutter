import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ButtonComp({Icon icon, String label}) {
  return Container(
    child: Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(7)),
              child: icon),
          SizedBox(
            height: 12,
          ),
          Text(
            label,
            style:
                GoogleFonts.ubuntu(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ],
      ),
    ),
  );
}
