import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample_app_flutter/cupid_api/src/models/models.dart';

/// Exception thrown when countries fails.
class CountriesRequestFailure implements Exception {}

/// Exception thrown when countries not found.
class CountriesNotFoundFailure implements Exception {}

/// Exception thrown when states fails.
class StatesRequestFailure implements Exception {}

/// Exception thrown when states not found.
class StatesNotFoundFailure implements Exception {}

class CupidApiClient {
  CupidApiClient({
    http.Client? httpClient,
    required String baseUrl,
    required String apiKey,
    required String userAgent,
  })  : _httpClient = httpClient ?? http.Client(),
        _baseUrl = baseUrl,
        _apiKey = apiKey,
        _userAgent = userAgent;

  final http.Client _httpClient;
  final String _baseUrl;
  final String _apiKey;
  final String _userAgent;

  Map<String, String>? _headers() {
    return {
      'x-api-key': _apiKey,
      'user-agent': _userAgent,
    };
  }

  /// Fetches list of countries.
  Future<List<Country>> getCountries() async {
    final countriesRequest = Uri.parse('$_baseUrl/countries');
    final countriesResponse = await _httpClient.get(
      countriesRequest,
      headers: _headers(),
    );

    if (countriesResponse.statusCode != 200) {
      throw CountriesRequestFailure();
    }

    final bodyJson = jsonDecode(countriesResponse.body) as List<dynamic>;

    if (bodyJson.isEmpty) {
      throw CountriesNotFoundFailure();
    }

    return bodyJson
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Fetches list of state for selected country.
  Future<List<State>> getStates(int countryId) async {
    final statesRequest = Uri.parse('$_baseUrl/countries/$countryId/states');
    final statesResponse = await _httpClient.get(
      statesRequest,
      headers: _headers(),
    );

    if (statesResponse.statusCode != 200) {
      throw StatesRequestFailure();
    }

    final bodyJson = jsonDecode(statesResponse.body) as List<dynamic>;

    if (bodyJson.isEmpty) {
      throw StatesNotFoundFailure();
    }

    return bodyJson
        .map((e) => State.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
