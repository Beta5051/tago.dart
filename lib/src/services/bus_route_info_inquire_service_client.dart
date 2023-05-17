import 'package:http/http.dart' as http;
import 'service_base_client.dart';
import '../models/models.dart';

class BusRouteInfoInquireServiceClient extends ServiceBaseClient {
  static const serviceUrl =
      'http://apis.data.go.kr/1613000/BusRouteInfoInqireService';

  BusRouteInfoInquireServiceClient({
    required String serviceKey,
    http.Client? httpClient,
  }) : super(
          serviceUrl: serviceUrl,
          serviceKey: serviceKey,
          httpClient: httpClient,
        );

  Future<List<BusRouteNo>> getRouteNoList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    String? routeNo,
  }) =>
      get(
        '/getRouteNoList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'cityCode': cityCode,
          'routeNo': routeNo,
        },
      ).then((elements) => elements
          .map((element) => BusRouteNo.fromXmlElement(element))
          .toList());

  Future<List<BusRouteAcctoThrghSttn>> getRouteAcctoThrghSttnList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    required String routeId,
  }) =>
      get(
        '/getRouteAcctoThrghSttnList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'cityCode': cityCode,
          'routeId': routeId,
        },
      ).then((elements) => elements
          .map((element) => BusRouteAcctoThrghSttn.fromXmlElement(element))
          .toList());

  Future<BusRouteInfoIem> getRouteInfoIem({
    required int cityCode,
    required String routeId,
  }) =>
      get(
        '/getRouteInfoIem',
        params: {
          'cityCode': cityCode,
          'routeId': routeId,
        },
      ).then((elements) => BusRouteInfoIem.fromXmlElement(elements.first));

  Future<List<BusCtyCode>> getCtyCodeList() =>
      get('/getCtyCodeList').then((elements) => elements
          .map((element) => BusCtyCode.fromXmlElement(element))
          .toList());
}
