import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:client_control/models/clients.dart';
import 'package:client_control/models/client.dart';
import 'package:client_control/models/client_type.dart';
import 'package:client_control/models/client_types.dart';

void main() {
  group('Client test', () {
    test('Creating a client and inserting in clients', () {
      Clients clients = Clients(clients: []);
      Client client = Client(
        name: 'Name',
        email: 'email@email.com',
        type: ClientType(name: "Gold", icon: Icons.credit_card),
      );

      clients.addClient(client);

      expect(clients.clients.length, 1);
      expect(clients.clients[0], client);
    });

    test('Creating two clients and removing one of them', () {
      Clients clients = Clients(clients: []);
      Client client1 = Client(
        name: 'Name',
        email: 'email@email.com',
        type: ClientType(name: "Gold", icon: Icons.credit_card),
      );

      clients.addClient(client1);

      Client client2 = Client(
        name: 'Name',
        email: 'email@email.com',
        type: ClientType(name: "Gold", icon: Icons.credit_card),
      );

      clients.addClient(client2);

      clients.remove(0);

      expect(clients.clients.length, 1);
      expect(clients.clients[0], client2);
    });
  });

  group('Client type test', () {

    test('Creating a client type and adding in list', (){
      Types types = Types(types: []);

      ClientType clientType = ClientType(name: "Gold", icon: Icons.credit_card);

      types.add(clientType);

      expect(types.types.length, 1);
      expect(types.types[0], clientType);
    });

    test('Removing a client type', (){
      Types types = Types(types: []);

      ClientType clientType1 = ClientType(name: "Gold", icon: Icons.credit_card);
      ClientType clientType2 = ClientType(name: "Goldest", icon: Icons.credit_card);

      types.add(clientType1);
      types.add(clientType2);

      types.remove(0);

      expect(types.types.length, 1);
      expect(types.types[0], clientType2);
    });

  });
}
