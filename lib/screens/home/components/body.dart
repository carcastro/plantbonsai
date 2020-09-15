import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nos proporcionará la altura y el ancho total de nuestra pantalla.
    Size size = MediaQuery.of(context).size;
    // permite el desplazamiento en un dispositivo pequeño
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomendado", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Plantas Destacadas", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
