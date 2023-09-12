import 'package:bybug/theme/color.dart';
import 'package:bybug/widget/backphoto.dart';
import 'package:bybug/widget/body.dart';
import 'package:bybug/widget/buttons.dart';
import 'package:bybug/widget/logo.dart';
import 'package:bybug/widget/top.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';

class NewPage extends StatelessWidget {
  final List<Widget> children;
  const NewPage({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BdColorDark.backgroundColor,
      body: BdBackgroundPhoto(
        image: AssetImage("assets/background.jpg"),
        child: BdBody(
          scrollable: true,
          children: [
            BdTopBar(
              widgetLogo: LogoProject(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    hoverColor: BdColorDark.textColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Akademi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    hoverColor: BdColorDark.textColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Pano",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    hoverColor: BdColorDark.textColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Portföy",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    hoverColor: BdColorDark.textColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Bize Ulaş",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: children,
            ),
            SizedBox(
              height: 50,
            ),
            LogoProject(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Powered By ByBug Night and Dragon Studio with JeaFriday | 2023",
              textAlign: TextAlign.left,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
