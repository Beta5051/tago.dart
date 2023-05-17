import 'package:http/http.dart' as http;
import 'service_base_client.dart';
import '../models/models.dart';

class BusSttnInfoInquireServiceClient extends ServiceBaseClient {
  static const serviceUrl =
      'http://apis.data.go.kr/1613000/BusSttnInfoInqireService';

  BusSttnInfoInquireServiceClient({
    required String serviceKey,
    http.Client? httpClient,
  }) : super(
          serviceUrl: serviceUrl,
          serviceKey: serviceKey,
          httpClient: httpClient,
        );

  Future<List<BusSttnNo>> getSttnNoList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    String? nodeNm,
    int? nodeNo,
  }) =>
      get(
        '/getSttnNoList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'cityCode': cityCode,
          'nodeNm': nodeNm,
          'nodeNo': nodeNo,
        },
      ).then((elements) => elements
          .map((element) => BusSttnNo.fromXmlElement(element))
          .toList());

  Future<List<BusCrdntPrxmtSttn>> getCrdntPrxmtSttnList({
    int? numOfRows,
    int? pageNo,
    required double gpsLati,
    required double gpsLong,
  }) =>
      get(
        '/getCrdntPrxmtSttnList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'gpsLati': gpsLati,
          'gpsLong': gpsLong,
        },
      ).then((elements) => elements
          .map((element) => BusCrdntPrxmtSttn.fromXmlElement(element))
          .toList());

  Future<List<BusCtyCode>> getCtyCodeList() =>
      get('/getCtyCodeList').then((elements) => elements
          .map((element) => BusCtyCode.fromXmlElement(element))
          .toList());

  Future<List<BusSttnThrghRoute>> getSttnThrghRouteList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    required String nodeId,
  }) =>
      get(
        '/getSttnThrghRouteList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'cityCode': cityCode,
          'nodeid': nodeId,
        },
      ).then((elements) => elements
          .map((element) => BusSttnThrghRoute.fromXmlElement(element))
          .toList());
}
