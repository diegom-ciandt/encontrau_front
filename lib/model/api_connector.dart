import 'package:http/http.dart' as http;

class Connector {
  final String _url;

  Connector(this._url);

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse(this._url + '/albums/1'));
  }
}
