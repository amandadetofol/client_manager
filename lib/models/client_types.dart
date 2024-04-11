import 'package:flutter/material.dart';
import 'client_type.dart';

class Types extends ChangeNotifier {

  final List<ClientType> types;

  Types({required this.types});

  void add(ClientType clientType){
    types.add(clientType);
    notifyListeners();
  }

}