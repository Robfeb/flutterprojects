import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'constants.dart';

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
  Future<double> getCoinData(String currency) async {
    var url = '$kCoinApiUrl/BTC/$currency?apikey=$kApiKey';
    var rate;
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      var jsonResponse = convert.jsonDecode(response.body);
      rate = jsonResponse['rate'];
      print(rate);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return rate;
  }
}
