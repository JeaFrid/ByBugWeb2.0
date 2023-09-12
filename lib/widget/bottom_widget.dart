import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/color.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 800 ? mobile() : pc(context);
  }

  Padding pc(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Image(
                image: NetworkImage(
                  "https://raw.githubusercontent.com/JeaFrid/ByBugWeb/master/assets/images/logo-classic.png",
                ),
                width: 70,
                height: 70,
              ),
              Text(
                'BYBUG DESING',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                'BYBUG TEAMS',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                'BYBUG LAVINIA',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ByBug Hakkında',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  sideButton(
                    "ByBug Web",
                    () {
                      launchUrls("https://bybug.net");
                    },
                  ),
                  sideButton(
                    "ByBug Akademi",
                    () {
                      launchUrls("https://t.me/ByBugOfficial");
                    },
                  ),
                  sideButton(
                    "ByBug Stajyerler",
                    () {
                      launchUrls("https://t.me/ByBugOfficial");
                    },
                  ),
                  sideButton(
                    "Sipariş Ver",
                    () {
                      launchUrls("https://t.me/ByBugOfficial");
                    },
                  ),
                  sideButton(
                    "Bize Ulaş",
                    () {
                      launchUrls("https://t.me/ByBugOfficial");
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "ByBug Project's",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  sideButton(
                    "Proje Oluştur",
                    () {
                      Navigator.pushNamed(context, "/add");
                    },
                  ),
                  sideButton(
                    "Reklam Ver",
                    () {
                      launchUrls("https://t.me/ByBugOfficial");
                    },
                  ),
                  sideButton(
                    "Referanslar",
                    () {
                      launchUrls("https://github/JeaFrid");
                    },
                  ),
                  sideButton(
                    "Proje Nasıl Oluşturulur?",
                    () {
                      Navigator.pushNamed(context, "/docs");
                    },
                  ),
                  sideButton(
                    "Geliştirici Paneli",
                    () {
                      Navigator.pushNamed(context, "/dev");
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sosyal Medya',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  sideButton(
                    "Telegram",
                    () {
                      launchUrls("https://t.me/kirmizipatika");
                    },
                  ),
                  sideButton(
                    "Instagram",
                    () {
                      launchUrls("https://instagram.com");
                    },
                  ),
                  sideButton(
                    "YouTube",
                    () {
                      launchUrls("https://www.youtube.com/@KirmiziPatika");
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Çok Yakında',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  sideButton(
                    "Chem Project's",
                    () {},
                  ),
                  sideButton(
                    "Yu Project's",
                    () {},
                  ),
                  sideButton(
                    "Lavinia Plus",
                    () {},
                  ),
                  sideButton(
                    "ByBug Home",
                    () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget mobile() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Image(
                image: NetworkImage(
                  "https://raw.githubusercontent.com/JeaFrid/ByBugWeb/master/assets/images/logo-classic.png",
                ),
                width: 70,
                height: 70,
              ),
              Text(
                'BYBUG DESING',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                'BYBUG TEAMS',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                'BYBUG LAVINIA',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding sideButton(String text, Function()? onTap) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(2),
              hoverColor: Colors.white.withOpacity(0.2),
              onTap: onTap,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: BdColorDark.textColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container algoritmaText(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: BdColorDark.textColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: BdColorDark.extraDarkColor,
            size: 18,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: BdColorDark.extraDarkColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchUrls(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
