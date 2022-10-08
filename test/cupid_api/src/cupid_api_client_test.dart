import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:sample_app_flutter/cupid_api/src/cupid_api_client.dart';
import 'package:sample_app_flutter/cupid_api/src/models/models.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('CupidApiClient', () {
    late http.Client httpClient;
    late CupidApiClient apiClient;
    const baseUrl = 'https://api.example.com/v1';
    const apiKey = 'api-key';
    const userAgent = 'user-agent';
    const headers = {
      'x-api-key': apiKey,
      'user-agent': userAgent,
    };

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      apiClient = CupidApiClient(
        httpClient: httpClient,
        baseUrl: baseUrl,
        apiKey: apiKey,
        userAgent: userAgent,
      );
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(
          CupidApiClient(
            baseUrl: baseUrl,
            apiKey: apiKey,
            userAgent: userAgent,
          ),
          isNotNull,
        );
      });
    });

    group('countries', () {
      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await apiClient.getCountries();
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.parse('$baseUrl/countries'),
            headers: headers,
          ),
        ).called(1);
      });

      test('throws CountriesRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getCountries(),
          throwsA(isA<CountriesRequestFailure>()),
        );
      });

      test('throws CountriesNotFoundFailure on empty response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getCountries(),
          throwsA(isA<CountriesNotFoundFailure>()),
        );
      });

      test('return countries on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('''
[
              {"id":13,"value":"Australia"},
              {"id":86,"value":"Germany"},
              {"id":165,"value":"New Zealand"}
]''');
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        final actual = await apiClient.getCountries();
        expect(
          actual,
          isA<List<Country>>()
              .having((items) => items.length, 'length', 3)
              .having((items) => items.first.id, 'first.id', 13)
              .having((items) => items.first.name, 'first.name', 'Australia')
              .having((items) => items.last.name, 'last.name', 'New Zealand'),
        );
      });
    });

    group('states', () {
      const countryId = 1234;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await apiClient.getStates(countryId);
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.parse(
              '$baseUrl/countries/$countryId/states',
            ),
            headers: headers,
          ),
        ).called(1);
      });

      test('throws StateRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getStates(countryId),
          throwsA(isA<StatesRequestFailure>()),
        );
      });

      test('throws StatesNotFoundFailure on empty response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getStates(countryId),
          throwsA(isA<StatesNotFoundFailure>()),
        );
      });

      test('return states on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('''
[
  {"id":2202,"value":"Auckland"},
  {"id":6888,"value":"Canterbury"},
  {"id":2211,"value":"Wellington"}
]''');
        when(() => httpClient.get(any(), headers: headers))
            .thenAnswer((_) async => response);
        final actual = await apiClient.getStates(countryId);
        expect(
          actual,
          isA<List<State>>()
              .having((items) => items.length, 'length', 3)
              .having((items) => items.first.id, 'first.id', 2202)
              .having((items) => items.first.name, 'first.name', 'Auckland')
              .having((items) => items.last.name, 'last.name', 'Wellington'),
        );
      });
    });
  });
}
