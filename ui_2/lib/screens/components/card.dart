import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_2/utils/constants/color_pallete.dart';

class CardComponent extends StatelessWidget {
  ColorPallete colorPallete = ColorPallete();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Animator<double>(
                resetAnimationOnRebuild: true,
                tween: Tween<double>(begin: 0, end: 12),
                builder: (context, animatorState, child) => Center(
                  child: Container(
                    height: 230,
                    margin: EdgeInsets.only(
                        left: 15, right: 15, top: animatorState.value),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
              )),
        ),
        Positioned(
          top: 16,
          child: Animator<double>(
            tween: Tween<double>(begin: 0, end: 12),
            resetAnimationOnRebuild: true,
            duration: Duration(seconds: 1),
            builder: (context, animatorState, child) => Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: 230,
                  margin: EdgeInsets.only(
                      left: 18, right: 18, top: animatorState.value),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 230,
          margin: EdgeInsets.only(top: 15, left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(7)),
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 4),
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 230),
                      painter: HeaderShader(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 4),
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 230),
                      painter: FooterShader(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$4,322.20",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 29)),
                              Text("Dollar debit card",
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: IconButton(
                              icon: Icon(
                                Feather.settings,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              whiteDot(),
                              whiteDot(),
                              whiteDot(),
                              whiteDot(),
                              SizedBox(
                                width: 5,
                              ),
                              Text("9316",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 20)),
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 51,
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colorPallete.primaryPink),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorPallete.primaryAmber
                                            .withOpacity(0.4)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderShader extends CustomPainter {
  ColorPallete pallete = ColorPallete();
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = pallete.primaryDarker
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.61, 0);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.17,
        size.width * 0.74, size.height * 0.30);
    path_0.quadraticBezierTo(
        size.width * 0.81, size.height * 0.40, size.width, size.height * 0.43);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.61, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FooterShader extends CustomPainter {
  ColorPallete pallete = ColorPallete();
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = pallete.primaryDarker
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.57);
    path_0.quadraticBezierTo(size.width * 0.19, size.height * 0.63,
        size.width * 0.26, size.height * 0.74);
    path_0.quadraticBezierTo(
        size.width * 0.30, size.height * 0.81, size.width * 0.37, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.57);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Widget whiteDot() {
  return Container(
    height: 6,
    width: 6,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
  );
}
