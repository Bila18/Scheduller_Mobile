import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModelMenu {
  String title;
  IconData icon;

  ModelMenu({
    required this.icon,
    required this.title,
  });
}

final List<ModelMenu> listMenu = [
  (ModelMenu(icon: FontAwesomeIcons.truck, title: 'Delivery')),
  (ModelMenu(icon: FontAwesomeIcons.toolbox, title: 'Periodical Service')),
  (ModelMenu(
      icon: FontAwesomeIcons.screwdriverWrench, title: 'Standard Warranty')),
  (ModelMenu(icon: FontAwesomeIcons.book, title: 'SOP')),
  (ModelMenu(icon: FontAwesomeIcons.warehouse, title: 'Factory Campaign')),
  (ModelMenu(icon: FontAwesomeIcons.bookOpenReader, title: 'WATAQ')),
  (ModelMenu(icon: FontAwesomeIcons.image, title: 'EMILADO')),
  (ModelMenu(icon: FontAwesomeIcons.fileInvoice, title: 'E-Form')),
  (ModelMenu(icon: FontAwesomeIcons.sliders, title: 'Main Tech')),
  (ModelMenu(icon: FontAwesomeIcons.info, title: 'Info')),
];
