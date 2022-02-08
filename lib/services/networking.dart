import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    String apiCall = this.url;

    String data = '';
    var url = Uri.parse(apiCall);
    http.Response response = await http.get(url); // or var response
    if (response.statusCode == 200) {
      data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
