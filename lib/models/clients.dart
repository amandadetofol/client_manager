import 'package:flutter/material.dart';

import 'client.dart';

class Clients extends ChangeNotifier {
  final List<Client> clients;

  Clients({required this.clients});

  void addClient(Client client){
    clients.add(client);
    notifyListeners();
  }

  void remove(int index){
    clients.removeAt(index);
    notifyListeners();
  }

}
