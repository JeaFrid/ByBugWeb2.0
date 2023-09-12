import 'package:bybug/page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoProject extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final double? size;
  const LogoProject({super.key, this.text, this.size, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text ?? "ByBug Web",
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontSize: size ?? 34,
            ),
          ),
          Text(
            text ?? " 2.0",
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontSize: size ?? 18,
            ),
          ),
        ],
      ),
    );
  }
}
