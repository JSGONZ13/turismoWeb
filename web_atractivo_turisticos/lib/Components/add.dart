import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

CarouselController buttonCarouselController = CarouselController();
TextEditingController texto1 = new TextEditingController();
TextEditingController texto2 = new TextEditingController();
TextEditingController texto3 = new TextEditingController();
String text1 = "";
String text2 = "";
String text3 = "";
agregarValoresParte1() {
  setState() {
    text1 = texto1.text;
  }

  print(text1);
}

agregarValoresParte2() {
  setState() {
    text2 = texto2.text;
  }

  print(text2);
}

agregarValoresParte3() {
  setState() {
    text3 = texto3.text;
  }

  print(text3);
}

List<Widget> items = [
  Column(
    children: [
      Container(
        decoration: BoxDecoration(color: Color(0xff353535)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: texto1,
            decoration: InputDecoration(labelText: "Texto"),
          ),
        ),
        height: 200.0,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            agregarValoresParte1();
            buttonCarouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          },
          child: Text('Siguiente'),
        ),
      ),
    ],
  ),
  Column(
    children: [
      Container(
        decoration: BoxDecoration(color: Color(0xff353535)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: texto2,
            decoration: InputDecoration(labelText: "Texto"),
          ),
        ),
        height: 200.0,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            agregarValoresParte2();
            buttonCarouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          },
          child: Text('Siguiente'),
        ),
      ),
    ],
  ),
  Column(
    children: [
      Container(
        decoration: BoxDecoration(color: Color(0xff353535)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: texto3,
            decoration: InputDecoration(labelText: "Texto"),
          ),
        ),
        height: 200.0,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            agregarValoresParte3();
            print(texto1.text);
            print(texto2.text);
            print(texto3.text);
            buttonCarouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          },
          child: Text('Guardar'),
        ),
      ),
    ],
  )
];

class atractivo extends StatefulWidget {
  @override
  _addAtractivo createState() => _addAtractivo();
}

class _addAtractivo extends State<atractivo> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      texto1.text = text1;
      texto2.text = text2;
      texto3.text = text3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F2F2),
            title: Text(
              'Registro de atractivo turístico: ',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Color(0xff0D0D0D)),
            )),
        backgroundColor: Color(0xFFF0F2F2),
        body: Container(
            child: Column(children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              height: 600.0,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              initialPage: 0,
            ),
            carouselController: buttonCarouselController,
            items: items,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => buttonCarouselController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear),
                        child: Text('Atras'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          buttonCarouselController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Text('Siguiente'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])));
  }
}
