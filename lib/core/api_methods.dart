
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:cotton_gang/core/exception.dart';

String baseUrl = 'https://jsonplaceholder.typicode.com';

class ApiServices {
  var client = http.Client();

//Http Get Method

  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);

    try {
      var response = await client.get(url).timeout(const Duration(seconds: 50));
      if (response.statusCode == 200) {
        // var data = jsonDecode(response.body);

        return processResponse(response);
      }
    } on SocketException {
      throw SocketExceptionError(
          message: 'No Internet Connection', url: url.toString());
    } on TimeoutException {
      throw TimeOutException(
          message: 'Connection timeout', url: url.toString());
    } on HttpException catch (_) {
      throw  HttpException("Unable to process the data at ${url.toString()}");
    } on FormatException catch (_) {
      throw  FormatException("Unable to process the data at ${url.toString()}");
    } on PlatformException {
      throw FetchDataException(message: 'Unable to process the data', url: url.toString() );
    }
  }

  //Http Get Method

  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var payLoad = json.encode(object);
    Map<String, String> header = {"Content-Type": "application/json"};

    try{
      var response = await client.post(url, body: payLoad, headers: header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return processResponse(response);
      }
    } on SocketException {
      throw SocketExceptionError(
          message: 'No Internet Connection', url: url.toString());
    } on TimeoutException {
      throw TimeOutException(
          message: 'Connection timeout', url: url.toString());
    } on HttpException catch (_) {
      throw  HttpException("Unable to process the data at ${url.toString()}");
    } on FormatException catch (_) {
      throw  FormatException("Unable to process the data at ${url.toString()}");
    } on PlatformException {
      throw FetchDataException(message: 'Unable to process the data', url: url.toString() );
    }
  }

  //Http Put Method
  Future<dynamic> put(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var payLoad = json.encode(object);
    Map<String, String> header = {"Content-Type": "application/json"};

    var response = await client.put(url, body: payLoad, headers: header);
    if (response.statusCode == 200) {
      return response.body;
    } else {}
  }

  //Http Delete Method
  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);

    var response = await client.delete(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return data;
    } else {}
  }
}

dynamic processResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = utf8.decode(response.bodyBytes);
      return responseJson;
    case 400:
      throw BadRequestException(
          message: utf8.decode(response.bodyBytes),
          url: response.request?.url.toString());
    case 401:
    case 403:
      throw UnAuthorizedException(
          message: utf8.decode(response.bodyBytes),
          url: response.request?.url.toString());
    case 500:
    default:
      throw FetchDataException(
          message: 'Error occur with code ${response.statusCode}',
          url: response.request?.url.toString());
  }
}

dynamic deleteLater(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = utf8.decode(response.bodyBytes);
      return responseJson;
    case 400:
      throw BadRequestException(
          message: utf8.decode(response.bodyBytes),
          url: response.request?.url.toString());
    case 401:
    case 403:
      throw UnAuthorizedException(
          message: utf8.decode(response.bodyBytes),
          url: response.request?.url.toString());
    case 500:
    default:
      throw FetchDataException(
          message: 'Error occur with code ${response.statusCode}',
          url: response.request?.url.toString());
  }
}

