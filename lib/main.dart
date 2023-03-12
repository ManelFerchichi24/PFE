import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

void main() {
  runApp(const MaterialApp(
    title: 'the first page ',
    home: NotDelivered(),
  ));
}

//////////////////////////////////////////////////////////////////// page one ////////////////////////////////////////////////////////////////////////
class stepone extends StatelessWidget {
  const stepone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white, //
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,//
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Center(
                child: ClipRRect(
                  child: Container(
                    height: 187,
                    width: 175,
                    color: Colors.white, //same as background of the scaffold
                    child: Image.asset('images/DeliveryImage.jpg'), //
                  ),
                ),
              ),
              Text(
                'Livrez vos commandes ',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'plus rapidement !',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 150.0,
              ),
              Text(
                "Insérez votre numéro de télèphone s'il vous plait ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                height: 85,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: '    N° télèphone',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 75,
                width: 170,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                      child: Text(
                        'Suivant',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const steptwo()),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////// page two ////////////////////////////////////////////////////////////////////////
class steptwo extends StatelessWidget {
  const steptwo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white, //
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,//
            children: <Widget>[
              SizedBox(
                height: 120.0,
              ),
              Center(
                child: ClipRRect(
                  child: Container(
                    height: 187,
                    width: 175,
                    color: Colors.white, //same as background of the scaffold
                    child: Image.asset('images/messageImage.png'), //
                  ),
                ),
              ),
              Text(
                'Vérifier votre messagerie',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "On vous a envoyer un code à votre numéro de télèphone ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "par SMS pour confirmer votre identité ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 85,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: '    xxxxxx',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 14,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 75,
                width: 170,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                      child: Text(
                        'Suivant',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const stepthree()),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////// page three ///////////////////////////////////////////////////////////////////////
class stepthree extends StatelessWidget {
  const stepthree({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white, //
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,//
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Center(
                child: ClipRRect(
                  child: Container(
                    height: 187,
                    width: 175,
                    color: Colors.white, //same as background of the scaffold
                    child: Image.asset('images/messageImage.png'), //
                  ),
                ),
              ),
              Text(
                'Vérifier votre messagerie',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "On vous a envoyer un code à votre numéro de télèphone ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "par SMS pour confirmer votre identité ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              //***********************************************************manque backend*******************************************
              //afficher un message si code incorrecte
              Text(
                'Code incorrect ! Réessayer',
                style: TextStyle(
                  color: Color(0xFFEB2121),
                  fontSize: 14,
                  fontFamily: 'Inter',
                ),
              ),
              //********************************************************************************************************************

              Container(
                height: 85,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: '    xxxxxx',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 14,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Vous n'avez rien reçu ?",
                style: TextStyle(
                  color: Color(0xFF726666),
                  fontSize: 12,
                  fontFamily: 'Inter',
                ),
              ),
              //button to resend again the code
              TextButton(
                  child: Text(
                    'Re-envoyer le code',
                    style: TextStyle(
                      color: Color(0xFF2D3871),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {
                    print('send again');
                  }),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 75,
                width: 170,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                      child: Text(
                        'Suivant',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const steptwo()),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////// page success //////////////////////////////////////////////////////////////////////
class success extends StatelessWidget {
  const success({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white, //
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,//
            children: <Widget>[
              SizedBox(
                height: 130.0,
              ),
              Center(
                child: ClipRRect(
                  child: Container(
                    height: 187,
                    width: 175,
                    color: Colors.white, //same as background of the scaffold
                    child: Image.asset('images/successImage.png'), //
                  ),
                ),
              ),
              Text(
                'Vérification avec succés !',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                "Appuyer sur le boutton suivant pour",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "commencer à traiter vos livraisons!",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                height: 75,
                width: 170,
                child: Card(
                  color: Color(0xFF2D3871),
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                      child: Text(
                        'Commencer',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Accueil()),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////// page accueil //////////////////////////////////////////////////////////////////////
class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    int payement = 0;
    int encaissement = 0;
    int nopayed = 0;
    int failed = 0;
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1D2240),
          title: Center(
            child: const Text(
              'Accueil',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          actions: [
            Card(
              color: Color(0xFF464343),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: () {
                  //we  need the list of the searches to write the functions and code
                  /*showSearch(context: context,
                        delegate: CustomSearchDelegate(),
                    );*/
                },
                icon: const Icon(Icons.search),
              ),
            )
          ],
        ),
        //
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Row(
                //info 2texts
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50.0,
                      child: Card(
                        color: Color(0xFFD0D1DA),
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 4.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "A payer : $payement DA",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              color: Color(0xFF464343),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      child: Card(
                        color: Color(0xFFD0D1DA),
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 4.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Encaissé : $encaissement ",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              color: Color(0xFF464343),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //text
              Column(
                children: <Widget>[
                  Row(
                    //info non livree and echouee
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 120.0,
                          child: Card(
                            color: Color(0xFFD0D1DA),
                            margin: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 4.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Non Livrées",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16.0,
                                      color: Color(0xFF464343),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "-$nopayed",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16.0,
                                      color: Color(0xFF464343),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "A payer : $payement DA",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 15.0,
                                        color: Color(0xFF464343),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //info retour and reporte
                    children: <Widget>[],
                  ),
                  Row(
                    //info livree et confirmee
                    children: <Widget>[],
                  ),
                ],
              )

              //sacn button
            ],
          ),
        ),
      ),
    );
  }
}

//customsearchdelegate
/*
class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms =[];
  @override
  List<Widget> buildActions(BuildContext context){}
}
*/

///////////////////////////////////////////////////////////////// page commandes non livrées //////////////////////////////////////////////////////////////////////

class NotDelivered extends StatelessWidget {
  const NotDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    //variables here
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Color(0xFFEFEDED),
        appBar: AppBar(
          backgroundColor: Color(0xFF1D2240),
          title: Center(
            child: const Text(
              'Commandes non Livrées',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        //
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: TextField(
                  // onChanged: (value) => _runFilter(value),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15),
                    hintText: "Rechercher",
                    suffixIcon: const Icon(Icons.search),
                    // prefix: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(),
                    ),
                  ),
                ),
              ),

              Center(
                child: Text(
                  'Total: 20',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              //Banner PART
              Center(
                child: Container(
                    height: 50.0,
                    width: 420.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff334192), Color(0xff3d4eaf)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Information Commande',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    )),
              ),

              SizedBox(
                height: 5.0,
              ),
              //CARD PART
              Center(
                child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عقدة الاقلاع عن التدخين',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Colors.black87),
                              ),
                              Text(
                                '3200DA',
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Boutique: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'dz shop maker',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Client: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'محمد قيدون',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Wilaya: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.black26,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Commune: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            )
                          ]),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: Text('Appeler'),
                                onPressed: () {},
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Mettre à jour'),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1D2240),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.reorder,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Détails'),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Center(
                child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عقدة الاقلاع عن التدخين',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Colors.black87),
                              ),
                              Text(
                                '3200DA',
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Boutique: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'dz shop maker',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Client: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'محمد قيدون',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Wilaya: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.black26,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Commune: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            )
                          ]),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: Text('Appeler'),
                                onPressed: () {},
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Mettre à jour'),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1D2240),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.reorder,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Détails'),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Center(
                child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عقدة الاقلاع عن التدخين',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Colors.black87),
                              ),
                              Text(
                                '3200DA',
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Boutique: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'dz shop maker',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Client: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              Text(
                                'محمد قيدون',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Wilaya: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.black26,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Commune: ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Alger',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black87),
                            )
                          ]),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: Text('Appeler'),
                                onPressed: () {},
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2E409B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Mettre à jour'),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1D2240),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                icon: const Icon(
                                  Icons.reorder,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: const Text('Détails'),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
