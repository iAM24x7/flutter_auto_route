// ignore_for_file: use_rethrow_when_possible, unused_import, prefer_final_fields

import 'dart:convert';

import 'package:flutter_auto_route/common/network/BaseApiServices.dart';
import 'package:flutter_auto_route/common/network/NetworkApiService.dart';
import 'package:http/http.dart';

import '../common/network/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
        AppUrl.loginEndPint,
        data,
      );
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
        AppUrl.registerApiEndPoint,
        data,
      );
      return response;
    } catch (e) {
      throw e;
    }
  }
}
