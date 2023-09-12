import 'package:bybug/page/new_page.dart';
import 'package:bybug/theme/color.dart';
import 'package:bybug/utils/tg.dart';
import 'package:bybug/widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final ByBugProjectsControllers bybugController =
      Get.put(ByBugProjectsControllers());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return NewPage(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Bize Ulaş",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, left: 5),
                    child: Text(
                      "veya not bırak.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      "ByBug'da 50'den fazla stüdyo ve departman bulunmaktadır. Her stüdyonun kendine ait bir çözüm birimi ve kriz ekibi bulunur. Projeniz ile ilgili bir problem yaşadığınızda, kriz ekipleri sizinle ilgilenir. Yardım, talep ve önerileriniz için çözüm birimleri sizinle ilgilenecektir.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      "Departmanlar ve Uzmanlar",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                ozellikWidgeti(
                  "JeaFriday",
                  "Community Chef",
                  200,
                  () async {
                    await launchUrls("https://t.me/JeaFrid");
                  },
                ),
                ozellikWidgeti(
                  "Poyraz Yıldırım",
                  "Studio's Chef",
                  200,
                  () async {
                    await launchUrls("https://t.me/poyrazyldrm");
                  },
                ),
                ozellikWidgeti(
                  "Aurora Cyberbyte",
                  "ByBug Chef",
                  200,
                  () async {
                    await launchUrls("https://t.me/auroracyberbyte");
                  },
                ),
                ozellikWidgeti(
                  "ByBug Community",
                  "All Department",
                  200,
                  () async {
                    await launchUrls("https://t.me/ByBugOfficial");
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      "Bize Bir Not Bırak",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: JeaTextField(
                textfieldController: bybugController.contactName,
                labelText: "Adınız ve Soyadınız",
                type: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: JeaTextField(
                textfieldController: bybugController.contactNote,
                labelText: "Notunuz",
                type: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: JeaTextField(
                textfieldController: bybugController.contactTelegram,
                labelText: "Telegram Adresiniz",
                type: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                hoverColor: BdColorDark.textColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4),
                onTap: () async {
                  try {
                    await bybugController.sendMessageJeaFriday("""
Yeni Bir Not Var!
*Gönderen:* ${bybugController.contactName.text}

*Not:* ${bybugController.contactNote.text}

*Telegram Adresi:* ${bybugController.contactTelegram.text}


""");
                    bybugController.contactName.clear();
                    bybugController.contactNote.clear();
                    bybugController.contactTelegram.clear();
                    ByBugDialg.showSuccessful(
                        context,
                        constraints,
                        "Teşekkürler!",
                        "Bize bir not bıraktığınız için teşekkürler!");
                  } catch (e) {
                    ByBugDialg.error(context, constraints, "Opss!",
                        "Bir sorun oluştu ve not gönderilemedi...");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Gönder",
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
        );
      },
    );
  }

  Widget ozellikWidgeti(
      String title, String subtitle, double width, void Function()? onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: BdColorDark.brightnessColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> launchUrls(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
