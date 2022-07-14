import 'package:flutter/material.dart';
import 'package:portofolio/ShortsScreen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mahmoudfouda',

      home: const MyHomePage(title: 'CV.Mahmoud Fouda'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: <Widget>[
          Expanded(child: BodyContainers(),)
        ],
      ),
    );
  }
}

class BodyContainers extends StatelessWidget {
  const BodyContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/main_bg_show.jpg"),fit: BoxFit.fill)),
        child:
        Column(
          children: [
            SizedBox(height: 30),
            Container1(),
            SizedBox(height: 5),
            TextWidget1(),
            SizedBox(height: 30),
            ProjectsButton(),
            SizedBox(height: 5),
            PaypalButton(),
            SizedBox(height: 5),
            WhatsappButton(),
            SizedBox(height: 190),
            TextWidget2(),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
} //AllBodyContainers
class Container1 extends StatelessWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'images/img6.png',
          fit: BoxFit.cover,
          width: 250,
          height: 250,
        ),
      ],
    );
  }
} //ProfileImage
class Container2 extends StatelessWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => print('toWebsite'), // needed
          child: Image.asset(
            "images/www.png",
            width: 22,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 10),

        InkWell(
          onTap: () => print('toBehance'), // needed
          child: Image.asset(
            "images/behance.png",
            width: 22,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 10),

        InkWell(
          onTap: () => print('toWhatsapp'), // needed
          child: Image.asset(
            "images/whatsapp.png",
            width: 22,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
} //ContactIcons
class TextWidget1 extends StatelessWidget {
  const TextWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Mahmoud Fouda',style: TextStyle(
            fontSize: 30,
            fontFamily: 'comic',
            color: Color(0xFF343434),
            fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.center,),

          Text('''29y, 15/8/1993
Egypt, Al Mahalla Al Kubra''',style: TextStyle(
            fontSize: 18,
            fontFamily: 'comic',
            color: Color(0xFF343434),
            fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.center,),
          SizedBox(height: 10),
        ],
      ),
    );
  }
} //Name & Details
class ProjectsButton extends StatelessWidget {
  const ProjectsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(

            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShortsScreen(),
              ));
            },

            child: Image.asset('images/ProjectsButton.png',width: 120,height: 25),

            style: ElevatedButton.styleFrom(
              primary: Colors.white70,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),),
            )),
    ], );
  }
} //ProjectsButton
class PaypalButton extends StatelessWidget {
  const PaypalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(

            onPressed: _launchURLBrowser2,

            child: Image.asset('images/paypalme-payment.png',width: 120),

            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFEC52D),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),),
            )),
      ], );
  }
} //PaypalButton
class WhatsappButton extends StatelessWidget {
  const WhatsappButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: _launchURLBrowser,

            child: Row(mainAxisSize: MainAxisSize.min,
              children: [
                Text('whatsapp.me',style: TextStyle(
                  color: Color(0xFF343434),
                  fontFamily: "sahel",
                  fontSize: 15,
                )),
                SizedBox(width: 5),
                Image.asset('images/whatsapp.png')
              ],
            ),
            
            style: ElevatedButton.styleFrom(
              primary: Colors.white70,
              padding: EdgeInsets.symmetric(horizontal: 47, vertical: 15),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),),
            )),
      ], );
  }
} //WhatsappButton
class TextWidget2 extends StatelessWidget {
  const TextWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('''mf@samem.online - all rights reserved@2022''',style: TextStyle(
                fontSize: 13,
                fontFamily: 'comic',
                color: Color(0xFF343434),
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.center,),
            ],
          ),
        ],
      ),
    );
  }
} //FooterDetails

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

_launchURLBrowser2() async {
  var url = Uri.parse("https://www.paypal.com/paypalme/my/profile");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}//toPaypalMe
_launchURLApp2() async {
  var url = Uri.parse("https://www.paypal.com/paypalme/my/profile");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}