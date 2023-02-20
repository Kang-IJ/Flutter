import 'dart:convert';
import 'package:http/http.dart' as http;
import 'apiKey.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'KRW',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  APIKey api = APIKey();

  Future getCoinData() async {
    String requestURL = '$coinApiURL/BTC/USD?apikey=${api.apiKey}';

    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var coinRate = decodedData['rate'];

      return coinRate;
    } else {
      print(response.statusCode);
      throw Exception('Failed to get coin data.');
    }
  }
}
