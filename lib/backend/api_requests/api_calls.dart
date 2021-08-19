import 'api_manager.dart';

Future<dynamic> googlemapCall() => ApiManager.instance.makeApiCall(
      callName: 'googlemap',
      apiDomain: 'www.google.com',
      apiEndpoint: 'maps/dir/?api=1&parameters',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
