import 'package:bybug/theme/color.dart';
import 'package:bybug/widget/backphoto.dart';
import 'package:bybug/widget/body.dart';
import 'package:bybug/widget/buttons.dart';
import 'package:bybug/widget/logo.dart';
import 'package:bybug/widget/top.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    onTap: () {
                      Navigator.pushNamed(context, "/comingsoon/Akademi");
                    },
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
                    onTap: () {
                      Navigator.pushNamed(context, "/comingsoon/Pano");
                    },
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
                    onTap: () async {
                      await launchUrls("github.com/JeaFrid");
                    },
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
                    onTap: () {
                      Navigator.pushNamed(context, "/contact");
                    },
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
            SizedBox(
              height: 50,
            ),
            Text(
              "S̶a̶d̶e̶c̶e̶ ̶H̶a̶y̶a̶l̶ ̶E̶t̶!̶",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.4),
                fontSize: 26,
              ),
            ),
            Text(
              "Hayır! Daha fazlasını yapmaktan çekinme!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  children: const [
                    TextSpan(
                      text: "'O proje tutmaz!'",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: ", ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text:
                          "'Senin gibi deneyen çok oldu, hepsi dibi boyladı. Sen mi kazanacaksın?'",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: ", ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: "'Senin gibileri çok gördük.'",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: ", ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: "'Fikir güzel de, boşa para harcarsın, uğraşma.' ",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text:
                          "DİYENLERİ ÇOK GÖRDÜK! Biz hayal etmekten vazgeçmeyerek bugünlere ulaştık. Bizimle beraber büyüyen onlarca proje de, başlangıçta (söz gelimi) 'sadece bir hayal, bir fikirdi'...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
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
                    Navigator.pushNamed(context, "/new");
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
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Sunduğumuz Hizmetler",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            JeaHorizontalScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ozellikWidgeti(
                      "Kurumsal Web Sitesi",
                      "İşinizi çevrimiçi dünyada daha görünür hale getirin ve potansiyel müşterilerinizi etkileyin. Kurumsal web sitesi, markanızın dijital yüzüdür. Size özel, profesyonel bir web sitesi ile müşterilerinizi etkileyin.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Mobil Uygulama",
                      "İşletmenizi cebinizde taşıyın! Mobil uygulama, müşterilerinizle daha yakın bir ilişki kurmanın ve hizmetlerinizi kolayca erişilebilir hale getirmenin modern bir yoludur. Size özel ve kullanıcı dostu bir mobil uygulama ile müşterilerinizi etkileyin.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Sanal Evren",
                      "Hayalinizdeki dünyayı yaratın ve müşterilerinizi gerçekten büyüleyin! Sanal evrenler, dijital dünyanın sınırlarını aşmanızı ve benzersiz deneyimler sunmanızı sağlar. Size özel ve etkileyici bir sanal evren oluşturarak izleyicilerinizi büyüleyin.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Hikaye Üreticiliği ve Senaryo Yazarlığı",
                      "Duygusal bağ kurma, etkileyici hikayelerle başlar. Biz, sizin hikayenizi anlatmanıza yardımcı oluyoruz. Profesyonel senaristlerimiz ve hikaye üreticilerimizle, unutulmaz hikayelerinizi hayata geçiriyoruz.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Ses ve Görsel Dizayn Hizmeti",
                      "Etkileyici bir görsel ve ses tasarımı, projelerinizi unutulmaz kılar. Biz, görsel ve ses dünyasını bir araya getirerek etkileyici deneyimler yaratmanıza yardımcı oluyoruz. Sizin için özel tasarım ve seslerle, izleyicilerinizi büyüleyin.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Dublaj ve Animasyon",
                      "Hikayenizi seslendirin ve animasyonla hayat verin! Dublaj ve animasyon, izleyicilerinizi büyülemenin ve mesajınızı etkili bir şekilde iletişim kurmanın yaratıcı bir yoludur. Size özel dublaj ve animasyonlarla projenizi unutulmaz kılın.",
                      200,
                    ),
                    ozellikWidgeti(
                      "Reklamlandırma Hizmetleri",
                      "Markanızı parlatın ve hedef kitlenize sesinizi duyurun! Reklamlandırma, işletmenizin veya ürününüzün başkalarına tanıtılmasının anahtarıdır. Profesyonel reklamlandırma hizmetleri ile izleyicilerinizi etkileyin ve büyüme potansiyelinizi artırın.",
                      200,
                    ),
                  ],
                ),
              ),
            ),
            altMetin(
              context,
              "assets/question_bybug.png",
              "ByBug Nedir?",
              "Tamam da, biz kimiz?",
              "ByBug, birkaç yıl önce bir fikir ile hayata geçen, tamamı bağımsız freelancer üyelerden oluşan bir proje geliştirme grubudur. Başta Telegram olmak üzere YouTube, Instagram ve Github gibi platformlarda ücretli/ücretsiz hizmet veren ByBug, hayal yaratıcısı olan JeaFriday tarafından yönetilmektedir.",
              true,
            ),
            altMetin(
              context,
              "assets/rocket.png",
              "ByBug Avantajları",
              "İyi, güzel de neden  bizi tercih edesiniz ki?",
              "ByBug, tüm projelerinizi en düşük bütçe ve en kısa süre ile geliştirmeyi amaçlar. Proje başlangıcından sonuna kadar sizinle birebir irtibat halinde kalacak pek çok muhattabınız olacaktır. Projelerinizi bizzat kontrol edebilmeniz için bizimle toplantılar yapabilir, proje kodlarını bizzat kontrol edebilir veya düzenleyebilirsiniz.",
              false,
            ),
            altMetin(
              context,
              "assets/search.png",
              "Teslimat Sonrası Takip Hakkında",
              "Projenizi teslim ettikten sonra ne mi yapıyoruz?",
              "İsteğinize bağlı olarak projenizin gidişatını bizzat takip ediyor, oluşabilecek hataları ve problemleri size bildiriyor ve gerekirse çözüyoruz. İhtiyacınız olduğu durumlarda, ufak ücretler ile projenizin yönetiminde size yardım ediyor, projeyi sizinle beraber büyütüyoruz!",
              true,
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

  Row altMetin(BuildContext context, String image, String miniTitle,
      String title, String subtitle, bool right) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Visibility(
          visible: right == false ? true : false,
          child: Image(
            image: AssetImage(image),
            width: MediaQuery.sizeOf(context).width * 0.20,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                miniTitle,
                textAlign: TextAlign.left,
                style: GoogleFonts.merriweather(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: right == true ? true : false,
          child: Image(
            image: AssetImage(image),
            width: MediaQuery.sizeOf(context).width * 0.20,
          ),
        ),
      ],
    );
  }

  Container ozellikWidgeti(String title, String subtitle, double width) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
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
    );
  }

  Future<void> launchUrls(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
