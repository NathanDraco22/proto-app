import '../services/websocket_service.dart';

class CoinModel {
  final String name;
  final String image;
  final double currentValue;
  final double previousValue;

  CoinModel(
    this.name, 
    this.currentValue, 
    this.previousValue,
    this.image  
  );

  CoinModel copyWithNewValue(double value) {
    return CoinModel(name, value , currentValue, image);
  }
}

class CoinPurse {
  final CoinModel bitcoin;
  final CoinModel ethereum;
  final CoinModel litecoin;
  final CoinModel dogecoin;

  CoinPurse(this.bitcoin, this.ethereum, this.litecoin, this.dogecoin);

  CoinPurse.initial():
    bitcoin =  CoinModel("bitcoin", 0.0,0.0, 'assets/images/bitcoin.png'), 
    ethereum = CoinModel("ethereum", 0.0,0.0,  'assets/images/ethereum.png'), 
    litecoin = CoinModel("litecoin", 0.0,0.0, 'assets/images/litecoin.png'), 
    dogecoin = CoinModel("dogecoin", 0.0,0.0, 'assets/images/dogecoin.png'); 

  CoinPurse copyFromMap(Map<String, double> jsonMap) {
    return CoinPurse(
      bitcoin.copyWithNewValue(jsonMap[bitcoin.name] ?? 0.0), 
      ethereum.copyWithNewValue(jsonMap[ethereum.name] ?? 0.0), 
      litecoin.copyWithNewValue(jsonMap[litecoin.name] ?? 0.0), 
      dogecoin.copyWithNewValue(jsonMap[dogecoin.name] ?? 0.0)
      );
  }


}

class CoinRepository {

  final WebSocketServices webSocketServices;
  CoinRepository(this.webSocketServices);

  final Map<String,double> coinValues = {
    "bitcoin" : 0.0,
    "ethereum": 0.0,
    "litecoin": 0.0,
    "dogecoin": 0.0
  };

  CoinPurse coinPurse = CoinPurse.initial();

  Stream<CoinPurse> getCoinPurseStream(){
    final mapStream = webSocketServices.connect();
    return mapStream.map((event){
      for (var entry in event.entries) {
        coinValues[entry.key] = double.parse(entry.value);
      }
      coinPurse = coinPurse.copyFromMap(coinValues);
      return coinPurse;
    });
  }

  Future<void> disconnectStream() async {
    await webSocketServices.disconnec();
  }

}

