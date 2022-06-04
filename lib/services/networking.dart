import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    String data = response.body;

    if(response.statusCode==200){
      var decoded = jsonDecode(data);
      return decoded;
      }
    else
        return response.statusCode;
    }
  }

