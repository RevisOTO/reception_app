import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:reception_app/data/network/entities/auth.dart';
import 'package:reception_app/data/network/entities/user.dart';
 
 

class KoException implements Exception {
  final int statusCode;
  final String? message;

  const KoException({required this.statusCode, this.message});

  @override
  String toString() {
    return 'KoException: statusCode: $statusCode, message: ${message ?? 'No message specified'}';
  }
}

class ApiClient {
  final String baseUrl;
  String? token;
  String? refreshToken;
  final Dio dio = Dio();

  ApiClient({required this.baseUrl, this.token, this.refreshToken}) {
    initApiClient();
  }

  void initApiClient() {
    //dio.interceptors.add(DioInterceptor());
    dio.interceptors.add(InterceptorsWrapper(
        onError: (DioException dioError, ErrorInterceptorHandler err) async {
      if (dioError.response?.statusCode == 401) {
        await refreshTokenRequest();
        await _retry(dioError.requestOptions);
      }
    }));
    dio.options.baseUrl = baseUrl;
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    // ignore: unnecessary_new
    final options = new Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    options.headers = await getHeaders();
    return dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  Future<void> refreshTokenRequest() async {
    final response = await Dio().post('$baseUrl/users/refreshToken',
        data: {'token': refreshToken},
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }));
    if (response.statusCode == 200) {
      // var auth = Auth.fromJson(response.data);
      // currentAuth = auth;
      // var authHive = await Hive.openBox('auths');
      // authHive.clear();
      // authHive.add(auth);
      // refreshToken = auth.refreshToken;
      // token = auth.accessToken;
    }
  }

  Future<Auth> login(String email, String password) async {
    try {
      final body = {"email": email, "password": password};
      final response = await dio.post('users/login', data: jsonEncode(body));
      if (response.data != null) {
         dio.options.headers = await getHeaders();
        return Auth.fromJson(response.data);
         
      } else {
        throw Exception('Could not parse response.');
      }
    } on DioException catch (err) {
      throw Exception(err.message);
    } catch (e) {
       if (kDebugMode) {
          print('debug: $e');
      }
      throw e.toString();
    }
  }

  Future<User> getUser(String id) async {
    try {
      final response = await dio.get('users/$id');
      if (response.data != null) {
        
        return User.fromJson(response.data);
      } else {
        throw Exception('Could not parse response.');
      }
    } on DioException catch (err) {
      throw Exception(err.message);
    } catch (e) {
      
      if (kDebugMode) {
          print('debug: $e');
      }
      throw e.toString();
    }
  }

 


 

  Future<Map<String, dynamic>> getHeaders() async {
    if (token == null) {
      //  Hive.registerAdapter(AuthAdapter());
      var authHive = await Hive.openBox('auths');
      final Auth? daoAuth = authHive.get(0);
      if (daoAuth != null) {
        token = daoAuth.accessToken;
      }
    }

    return {
      HttpHeaders.contentTypeHeader: "application/json",
      "Authorization": "Bearer $token"
    };
  }
}