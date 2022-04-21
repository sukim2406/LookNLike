import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

int loadingTextMaxIndex = 3;
int languageIndex = 0;

var primaryColor = const Color.fromRGBO(0, 0, 0, 1);
var secondaryColor = const Color.fromRGBO(34, 51, 59, 1);
var tertiaryColor = const Color.fromRGBO(234, 224, 213, 1);
var quarternaryColor = const Color.fromRGBO(94, 80, 63, 1);

setWidth(context, ratio) {
  return MediaQuery.of(context).size.width * ratio;
}

setHeight(context, ratio) {
  return MediaQuery.of(context).size.height * ratio;
}

var clothingType = [
  SearchFieldListItem(
    'tshirt',
    child: Text('tshirt'),
  ),
  SearchFieldListItem(
    'top',
    child: Text('top'),
  ),
  SearchFieldListItem(
    'sneakers',
    child: Text('sneakers'),
  ),
  SearchFieldListItem(
    'jacket',
    child: Text('jacket'),
  ),
  SearchFieldListItem(
    'dress',
    child: Text('dress'),
  ),
  SearchFieldListItem(
    'jeans',
    child: Text('jeans'),
  ),
];

var clothingTypeList = [
  'tshirt',
  'top',
  'sneakers',
  'jacket',
  'dress',
  'jeans',
  'other',
  'custom',
];
