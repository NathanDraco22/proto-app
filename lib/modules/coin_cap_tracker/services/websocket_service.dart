import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';



class WebSocketServices {

  WebSocketChannel? channel;

  Uri wsUri = Uri.parse("wss://ws.coincap.io/prices?assets=bitcoin,ethereum,litecoin,dogecoin");

  Stream<Map> connect(){
    channel = WebSocketChannel.connect(wsUri);
    return channel!.stream.map((event) => (json.decode(event) as Map));
  }

  Future<void> disconnec()async{
    await channel?.sink.close();
  }

}




