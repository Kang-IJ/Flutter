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
  'BCH',
  'ETC',
  'SOL',
];

const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  APIKey api = APIKey();

  Future getCoinData(String currency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL = '$coinApiURL/$crypto/$currency?apikey=${api.apiKey}';
      http.Response response = await http.get(Uri.parse(requestURL));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double coinRate = decodedData['rate'];

        cryptoPrices[crypto] = coinRate.toStringAsFixed(0);
      } else {
        throw Exception('Failed to get coin data. (${response.statusCode})');
      }
    }
    return cryptoPrices;
  }
}
