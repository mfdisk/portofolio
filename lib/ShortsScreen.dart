import 'package:flutter/material.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

var vidList = {};
var shortsList={
  0: [
    'vid1'
    'images/main_bg_show.jpg'
    'images/img6.png'
  ]
};

class ShortsScreen extends StatefulWidget {
  static const String id = 'ShortsScreen';
  const ShortsScreen({Key? key}) : super(key: key);

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ContainerScaffold(),
    ));
  }
}


class ContainerScaffold extends StatelessWidget {
  const ContainerScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50, // Set this height
        backgroundColor: const Color(0xFFFEC52D),
        title: const AppBarWidget(),
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyApp(),
            ));
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const BodyPaymentContainers(),

      floatingActionButton: FloatingActionButton(
        onPressed: _launchURLBrowser,
        tooltip: 'whatsapp.me',
        child: const Icon(Icons.whatsapp,size: 40),
        backgroundColor: Colors.green,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} //Appbar&Body
class BodyPaymentContainers extends StatelessWidget {
  const BodyPaymentContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
} // BodyContainers
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text('أطلب أعمالك الآن أونلاين',style: TextStyle(
                      color: Color(0xFF5B5A60),
                      fontSize: 15,
                      fontFamily: "sahel",
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),

      ],

    ),);
  }
} //AppBar

_launchURLBrowser() async {
  var url = Uri.parse("https://web.whatsapp.com/send?phone=201558118990");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}//toWhatsapp
_launchURLApp() async {
  var url = Uri.parse("https://web.whatsapp.com/send?phone=201558118990");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}