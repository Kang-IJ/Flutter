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

class CoinData {
  APIKey api = APIKey();

  Future<dynamic> getCoinData() async {
    var coinData;
    http.Response response = await http.get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=${api.apiKey}'));
    if (response.statusCode == 200) {
      coinData = jsonDecode(response.body);
    }

    return coinData;
  }
}
