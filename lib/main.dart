import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'the first page ',
    home: Accueil(),
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
    int payement =0 ;
    int encaissement=0;
    int nopayed=0;
    int failed=0;
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
                  onPressed: (){
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
                      height:50.0,
                      child: Card(
                        color: Color(0xFFD0D1DA),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
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
                      height:50.0,
                      child: Card(
                        color: Color(0xFFD0D1DA),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
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
                          height:120.0,
                          child: Card(
                            color: Color(0xFFD0D1DA),
                            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
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
                                    onPressed: (){},
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
