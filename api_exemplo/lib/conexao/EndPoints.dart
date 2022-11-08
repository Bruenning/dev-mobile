import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:apirequest/beer/BeerListModel.dart';
import 'packege:apirequest/car/carListModel.dart';
import 'package:apirequest/car/carModel.dart';
import 'package:connectivity//connectivity.dart';

const String _noValueGive = "";

String beers = "https://api.punkapi.com/v2/beers";
String carGet = "https://10.0.2.16/api/list";
String carPost = "https://10.0.2.16/api/store";

Future<BeerListModel> getBeerListData() async{
  final response = await http.get(Uri.parse(beers));
  return BeerListModel.fromJson(json.decode(response.body));
}

Future<CarListModel> getCarListData([String id = _noValueGive]) async{
  await Future.delayed(const Duration(seconds: 2),(){});

  var response;

  if(identical(id, _noValueGive)){
    response = await http.get(Uri.parse(carGet));
  }else{
    response = await http.get(Uri.parse(carGet).replace(queryParameters: {'id': id}));
  }

  return CarListModel.fromJson(json.decode(response.body));
}

Future<http.Response> createPost(carModel car, String utl) async {
  final reponse = await http.post(Uri.parse(carPost),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
  ),
}