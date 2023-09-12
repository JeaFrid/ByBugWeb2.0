import 'package:bybug/page/new_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoon extends StatelessWidget {
  final String pageName;
  const ComingSoon({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return NewPage(
      children: [
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Text(
            "$pageName, çok yakında burada olacak!",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
