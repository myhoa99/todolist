import 'package:flutter/material.dart';
import 'package:to_do_list_getx/app/core/values/colors.dart';
import 'package:to_do_list_getx/app/core/values/icons.dart';
List<Icon> getIcons(){
  return const[
    Icon(IconData(personIcon, fontFamily: 'MateriaIcons'), color:purple),
    Icon(IconData(workIcon, fontFamily: 'MateriaIcons'), color:pink),
    Icon(IconData(movieIcon, fontFamily: 'MateriaIcons'), color:green),
    Icon(IconData(sportIcon, fontFamily: 'MateriaIcons'), color:yellow),
    Icon(IconData(travelIcon, fontFamily: 'MateriaIcons'), color:deepPink),
    Icon(IconData(shopIcon, fontFamily: 'MateriaIcons'), color:lightblue),

  ];
}