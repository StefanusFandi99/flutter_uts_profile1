import 'package:flutter/material.dart';
import 'package:flutter_uts_profile/info_card.dart';


const univ ="STMIK WIDYA UTAMA";
const alamat = "Jalan Siliwangi, Suro Kec. Kalibagor Kab. Banyumas";
const nohp ="085865988717";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CircleAvatar circleAvatar = CircleAvatar(
          radius: 50,
          backgroundImage: Image.asset("assets/images/avatar.jpeg") .image,
          backgroundColor: Colors.transparent,
        );
    return Scaffold(
      backgroundColor:Colors.indigo[600],
      body: SafeArea(minimum: const EdgeInsets.only(top: 100),
      child: Column(children: <Widget> [
        circleAvatar,
        const Text("Stefanus Fandi Wibowo",
        style: TextStyle(fontSize: 35.0,
        color: Colors.white,
        fontWeight: FontWeight.bold),),
        const Text(
          "STI202102245",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.white,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      const SizedBox(
        height: 20,
        width: 200,
        child: Divider(color: Colors.white,),
      ),
      InfoCard(
        text : univ,
        icon : Icons.account_balance,
        onPressed : () async {}),
        InfoCard(
        text : alamat,
        icon : Icons.co_present_outlined,
        onPressed : () async {}),
        InfoCard(
        text : nohp,
        icon : Icons.category_outlined,
        onPressed : () async {}),
      ],),),
    );
  }
}