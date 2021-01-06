import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_2/screens/components/appBar.dart';
import 'package:ui_2/screens/components/card.dart';
import 'package:ui_2/screens/components/middleBtn.dart';
import 'package:ui_2/screens/components/slidingWidget.dart';
import 'package:ui_2/utils/constants/color_pallete.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ColorPallete colorPallete = ColorPallete();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 25),
          child: Column(
            children: [
              AppBarMain(),
              CardComponent(),
              Container(
                height: 180,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonComp(
                        icon: Icon(
                          Icons.analytics,
                          color: Colors.white,
                          size: 35,
                        ),
                        label: 'Analytics'),
                    SizedBox(
                      width: 35,
                    ),
                    ButtonComp(
                        icon: Icon(
                          Feather.plus_square,
                          color: Colors.white,
                          size: 35,
                        ),
                        label: 'Replenish'),
                  ],
                ),
              ),
              SlidingComp(),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: size.width,
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Today",
                              style: GoogleFonts.poppins(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Text("-\$243.43",
                              style: GoogleFonts.poppins(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome5Brands.amazon_pay),
                      title: Text(
                        'Amazon Pay',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Paid to Lucia',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: Text('-\$65.43',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome5Brands.spotify),
                      title: Text(
                        'Spotify',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Music subscription',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: Text('-\$21.43',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome5Brands.yandex),
                      title: Text(
                        'Yandex Taxi',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Taxi fare',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: Text('-\$10.43',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome5Brands.playstation),
                      title: Text(
                        'Playstation',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Bought Cyberpunk',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: Text('-\$100.43',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome5Brands.google_play),
                      title: Text(
                        'Play Store',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Movie on rent',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: Text('-\$39.43',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
