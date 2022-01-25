import 'dart:convert' as convert;

import 'package:flutter_rnd/GetX/model/FakeModelPagination.dart';
import 'package:flutter_rnd/GetX/model/FakeUserModel.dart';
import 'package:flutter_rnd/GetX/model/User.dart';
import 'package:flutter_rnd/GetX/shopWitGetX/model/MackUpModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String _url = 'jsonplaceholder.typicode.com';
  int page = 1;

  Future<List<User>> getUsers() async {
    final url =
        Uri.https(_url, '/users'); // Convert the url string into a https Uri
    final resp = await http.get(url);

    final List<dynamic> decodedData =
        convert.jsonDecode(resp.body); // Get the decoded response data

    return decodedData
        .map(
            (e) => // Use the iterable map() to generate new User instances from the response
                User.fromJson(e))
        .toList();
  }

  Future<List<FakeUserModel>> getFakeUserModel() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final List<dynamic> decodeJsonData = convert.jsonDecode(response.body);
    return decodeJsonData.map((e) => FakeUserModel.fromJson(e)).toList();
  }

  Future<List<Data>?> getFakeModelPagination(int pageIndex) async {
    final response = await http.get(Uri.parse(
        'https://api.instantwebtools.net/v1/passenger?page=$page&size=10'));

    FakeModelPagination fakeModelPagination =
        FakeModelPagination.fromJson(convert.jsonDecode(response.body));
    page++;
    return fakeModelPagination.data;
  }

  Future<List<MackUpModel>> callMakupApi() async {
    final response = await http.get(
        Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json'));
    final List<dynamic> jsonDat = convert.jsonDecode(response.body);
    return jsonDat.map((e) => MackUpModel.fromJson(e)).toList();
  }
}
