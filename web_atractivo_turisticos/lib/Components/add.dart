import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class atractivo extends StatefulWidget {
  @override
  _addAtractivo createState() => _addAtractivo();
}

class _addAtractivo extends State<atractivo> {
  CarouselController buttonCarouselController = CarouselController();

//Items para: Línea de producto al que pertenece el atractivo
  List<String> lineaProductos = ['Cultura', 'Naturaleza', 'Aventura'];
  String itemLinea;

//Items para: Escenario donde se localiza el atractivo turístico
  List<String> localizacionAtractivo = [
    'Pristino',
    'Primitivo',
    'Rústico natural',
    'Rural',
    'Urbano'
  ];
  String itemLocalizacion;

  @override
  // ignore: must_call_super
  void initState() {
    setState(() {
      itemLinea = lineaProductos[0];
      itemLocalizacion = localizacionAtractivo[0];
    });
    super.initState();
  }

  // NO TOCAR
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: Color(0xFFF0F2F2),
            title: Text(
              'Registro de atractivo turístico: ',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Color(0xff0D0D0D)),
            )),
        backgroundColor: Color(0xFFF0F2F2),
        body: Container(
            child: ListView(children: <Widget>[
          CarouselSlider(
              options: CarouselOptions(
                height: 500,
                autoPlay: false,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                initialPage: 0,
              ),
              carouselController: buttonCarouselController,
              items: <Widget>[
                //1. Datos generales NO TOCAR
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        padding: EdgeInsets.all(30),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Datos generales',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      color: Color(0xff0D0D0D)),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    labelText:
                                        "Nombre del atractivo turístico"),
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(labelText: "Categoría"),
                              ),
                              TextField(
                                decoration: InputDecoration(labelText: "Tipo"),
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(labelText: "Subtipo"),
                              )
                            ],
                          ),
                        ))),
                //2. Ubicación del atractivo
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              child: Text(
                                'Ubicación del atractivo',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Color(0xff0D0D0D)),
                              ),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Provincia"),
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: "Cantón"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Parroquia"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Barrio, sector o comuna"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Calle principal"),
                            ),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(labelText: "Número"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Transversal"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Latitud (Grados decimales)"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Longitud (Grados decimales)"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Altura (msnm)"),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 30, top: 20),
                              child: Text(
                                'Información del administrador',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Color(0xff0D0D0D)),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Tipo de administrador"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Nombre de la institución"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Nombre del administrador"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Cargo que ocupa"),
                            ),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(labelText: "Teléfono"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Correo electrónico"),
                            ),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration:
                                  InputDecoration(labelText: "Observaciones"),
                            ),
                          ],
                        ),
                      ),
                    )),
                //3. Características del atractivo
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        padding: EdgeInsets.all(30),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Características del atractivo',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      color: Color(0xff0D0D0D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Características climatológicas',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Color(0xff0D0D0D)),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(labelText: "Clima"),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: "Temperatura (°C)"),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    labelText:
                                        "Precipitación pluviométrica (mm)"),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20, bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Línea de producto al que pertenece el atractivo",
                                        style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff0D0D0D)),
                                      ),
                                    ),
                                    new DropdownButton(
                                        value: itemLinea,
                                        items: lineaProductos.map((valueLinea) {
                                          return DropdownMenuItem(
                                              value: valueLinea,
                                              child: Text(valueLinea));
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            itemLinea = newValue;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20, bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Escenario donde se localiza el atractivo turístico",
                                        style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff0D0D0D)),
                                      ),
                                    ),
                                    new DropdownButton(
                                        value: itemLocalizacion,
                                        items: localizacionAtractivo
                                            .map((valueLinea) {
                                          return DropdownMenuItem(
                                              value: valueLinea,
                                              child: Text(valueLinea));
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            itemLocalizacion = newValue;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Ingreso al atractivo',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Color(0xff0D0D0D)),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Libre',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                            Checkbox(
                                                value: true, onChanged: null),
                                            Text(
                                              'En caso de no tener, no llenar lo siguiente:',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Horario de atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de ingreso"),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de salida"),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 10),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Todos los días',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Fines de semana y feriados',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Solo días hábiles',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Otros',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  TextField(
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    maxLines: null,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "En caso de seleccionar otros, especificar"),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Restringido',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                            Checkbox(
                                                value: true, onChanged: null),
                                            Text(
                                              'En caso de no tener, no llenar lo siguiente:',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Horario de atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de ingreso"),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de salida"),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 10),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Todos los días',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Fines de semana y feriados',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Solo días hábiles',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Otros',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  TextField(
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    maxLines: null,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "En caso de seleccionar otros, especificar"),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Pagado',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                            Checkbox(
                                                value: true, onChanged: null),
                                            Text(
                                              'En caso de no tener, no llenar lo siguiente:',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  color: Color(0xff0D0D0D)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Horario de atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de ingreso"),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30),
                                                    width: 200,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Hora de salida"),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 10),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Atención",
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0D0D0D)),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Todos los días',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Fines de semana y feriados',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Solo días hábiles',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Otros',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff0D0D0D)),
                                                      ),
                                                      Checkbox(
                                                          value: true,
                                                          onChanged: null),
                                                    ],
                                                  ),
                                                  TextField(
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    maxLines: null,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "En caso de seleccionar otros, especificar"),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))),
              ]),
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