

import 'package:proto_app/modules/coin_cap_tracker/services/websocket_service.dart';

void main(List<String> args) {
  

  final streamData = WebSocketServices().connect();

  streamData.listen((event) {
    print(event.runtimeType);
    print(event.values.first.runtimeType);
  },);


}