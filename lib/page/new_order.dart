import 'dart:html';

import 'package:bybug/page/new_page.dart';
import 'package:bybug/theme/color.dart';
import 'package:bybug/utils/tg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({super.key});

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  Color androidColor = Colors.transparent;

  Color iosColor = Colors.transparent;

  Color webColor = Colors.transparent;

  Color macOsColor = Colors.transparent;

  Color windowsColor = Colors.transparent;

  Color linuxColor = Colors.transparent;

  bool androidSelect = false;

  bool iosSelect = false;

  bool webSelect = false;

  bool macOsSelect = false;

  bool windowsSelect = false;

  bool linuxSelect = false;

  ByBugProjectsControllers bybugController =
      Get.put(ByBugProjectsControllers());

  @override
  Widget build(BuildContext context) {
    return NewPage(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text(
                "Sipariş Oluştur",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 26,
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
                  "Şimdi hayalinizi düşleyin... Hayalinizde olan proje hangi platformda olmalı? Hangi kitleye hitap etmeli? Düşündünüz mü? O halde hazırız! Projenizi bize açıklayın, size ulaşarak özel fiyat verelim ve projenize başlayalım.",
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
                  "Temel Detaylar",
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
        JeaTextField(
          textfieldController: bybugController.isim,
          labelText: "Proje Adı",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.amac,
          labelText: "Proje Tanımı/Açıklaması",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.kategori,
          labelText: "Proje Kategorisi",
          type: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Text(
                  "Proje kategorisi, projenin amacını tarif eder. Örn: Verimlilik, Sağlık, Kişisel Gelişim, Spor, Sanat vb.",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        JeaTextField(
          textfieldController: bybugController.butce,
          labelText: "Proje İçin Ayrılan Tahmini Bütçe (Opsiyonel)",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.kitle,
          labelText: "Proje Kitlesi",
          type: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Text(
                  "Proje kitlesi, projenizi kimlerin kullanmasını istediğinizi belirler. Örn: Çocuklar, İşçiler, Sadece Kadınlar, Sadece Erkekler, Genel Kullanıcı Kitlesi vb.",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
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
                  "Platform Seçimi",
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
        JeaHorizontalScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                selectButton(
                  "Android",
                  androidSelect,
                  androidColor,
                ),
                selectButton(
                  "IOS",
                  iosSelect,
                  iosColor,
                ),
                selectButton(
                  "Web",
                  webSelect,
                  webColor,
                ),
                selectButton(
                  "Windows",
                  windowsSelect,
                  windowsColor,
                ),
                selectButton(
                  "MacOs",
                  macOsSelect,
                  macOsColor,
                ),
                selectButton(
                  "Linux",
                  linuxSelect,
                  linuxColor,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                child: Text(
                  "Müşteri Bilgileri",
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
        JeaTextField(
          textfieldController: bybugController.adSoyad,
          labelText: "Proje Sahibinin Adı ve Soyadı",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.telegram,
          labelText: "Telegram Adresiniz",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.eposta,
          labelText: "E-posta Adresiniz",
          type: 1,
        ),
        JeaTextField(
          textfieldController: bybugController.telNo,
          labelText: "Telefon Numaranız",
          type: 1,
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            hoverColor: BdColorDark.textColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
            onTap: () async {
              await bybugController.sendMessageJeaFriday("""
__Yeni Bir Sipariş Var!__

 *Proje Adı: * ${bybugController.isim.text},
 
 *Proje Tanımı: * ${bybugController.amac.text},
 
 *Proje Bütçesi: * ${bybugController.butce.text},
 
 *Proje Kitlesi: * ${bybugController.kitle.text},
 
 *Proje Kategorisi: * ${bybugController.kategori.text},
 
 *Müşteri Hakkında; *
 
 *Müşteri'nin Adı: * ${bybugController.adSoyad.text},
 
 *Müşteri'nin Telegramı: * ${bybugController.telegram.text},
 
 *Müşteri'nin Telefon Numarası: * ${bybugController.telNo.text},
 
 *Müşteri'nin E-posta Adresi: * ${bybugController.eposta.text},
 
 *Platformlar; *
 *Android: * $androidSelect,
 *IOS: * $iosSelect,
 *Web: * $webSelect,
 *MacOs: * $macOsSelect,
 *Windows: * $windowsSelect,
 *Linux: * $linuxSelect.
""");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sipariş Oluştur",
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
  }

  Padding selectButton(String name, bool select, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 2,
            color: BdColorDark.textColor.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          hoverColor: BdColorDark.textColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
          onTap: () {
            if (select == true) {
              setState(() {
                if (name == "Android") {
                  androidColor = Colors.transparent;
                  androidSelect = false;
                } else if ((name == "IOS")) {
                  iosColor = Colors.transparent;
                  iosSelect = false;
                } else if ((name == "Web")) {
                  webColor = Colors.transparent;
                  webSelect = false;
                } else if ((name == "Windows")) {
                  windowsColor = Colors.transparent;
                  windowsSelect = false;
                } else if ((name == "MacOs")) {
                  macOsColor = Colors.transparent;
                  macOsSelect = false;
                } else if ((name == "Linux")) {
                  linuxColor = Colors.transparent;
                  linuxSelect = false;
                }
              });
            } else if (select == false) {
              setState(() {
                if (name == "Android") {
                  androidColor = BdColorDark.textColor.withOpacity(0.1);
                  androidSelect = true;
                } else if ((name == "IOS")) {
                  iosColor = BdColorDark.textColor.withOpacity(0.1);
                  iosSelect = true;
                } else if ((name == "Web")) {
                  webColor = BdColorDark.textColor.withOpacity(0.1);
                  webSelect = true;
                } else if ((name == "Windows")) {
                  windowsColor = BdColorDark.textColor.withOpacity(0.1);
                  windowsSelect = true;
                } else if ((name == "MacOs")) {
                  macOsColor = BdColorDark.textColor.withOpacity(0.1);
                  macOsSelect = true;
                } else if ((name == "Linux")) {
                  linuxColor = BdColorDark.textColor.withOpacity(0.1);
                  linuxSelect = true;
                }
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
