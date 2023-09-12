import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../widget/backphoto.dart';
import '../widget/body.dart';
import '../widget/buttons.dart';
import '../widget/logo.dart';
import '../widget/top.dart';

class ChemMenu extends StatelessWidget {
  final List<Widget>? children;
  const ChemMenu({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BdColorDark.backgroundColor,
      body: BdBackgroundPhoto(
        image: const AssetImage("assets/background.jpg"),
        opacity: 0.1,
        child: BdBody(
          scrollable: true,
          children: [
            const BdTopBar(
              widgetLogo: LogoProject(),
              children: [
                BdIconButton(iconData: Icons.person_2, text: "Hesabım"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BdIconButton(
                            iconData: Icons.home,
                            text: "Ana Sayfa",
                          ),
                          BdIconButton(
                            iconData: Icons.book,
                            text: "Kimya Kütüphane",
                          ),
                          BdIconButton(
                            iconData: Icons.warning,
                            text: "Uyarılar ve Bilgiler",
                          ),
                          BdIconButton(
                            iconData: Icons.note,
                            text: "Not Defteri",
                          ),
                          BdIconButton(
                            iconData: Icons.shopping_bag,
                            text: "Formülizasyon",
                          ),
                          BdIconButton(
                            iconData: Icons.support,
                            text: "Yardım ve Dökümanlar",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: children!,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
