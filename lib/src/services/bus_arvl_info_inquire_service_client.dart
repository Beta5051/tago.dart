import 'package:http/http.dart' as http;
import 'service_base_client.dart';
import '../models/models.dart';

class BusArvlInfoInquireServiceClient extends ServiceBaseClient {
  static const serviceUrl =
      'http://apis.data.go.kr/1613000/ArvlInfoInqireService';

  BusArvlInfoInquireServiceClient({
    required String serviceKey,
    http.Client? httpClient,
  }) : super(
          serviceKey: serviceKey,
          serviceUrl: serviceUrl,
          httpClient: httpClient,
        );

  Future<List<BusSttnAcctoArvlPrearngeInfo>> getSttnAcctoArvlPrearngeInfoList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    required String nodeId,
  }) =>
      get(
        '/getSttnAcctoArvlPrearngeInfoList',
        numOfRows: numOfRows,
        pageNo: pageNo,
        params: {
          'cityCode': cityCode,
          'nodeId': nodeId,
        },
      ).then((elements) => elements
          .map(
              (element) => BusSttnAcctoArvlPrearngeInfo.fromXmlElement(element))
          .toList());

  Future<List<BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo>>
      getSttnAcctoSpcifyRouteBusArvlPrearngeInfoList({
    int? numOfRows,
    int? pageNo,
    required int cityCode,
    required String nodeId,
    required String routeId,
  }) =>
          get(
            '/getSttnAcctoSpcifyRouteBusArvlPrearngeInfoList',
            numOfRows: numOfRows,
            pageNo: pageNo,
            params: {
              'cityCode': cityCode,
              'nodeId': nodeId,
              'routeId': routeId,
            },
          ).then((elements) => elements
              .map((element) =>
                  BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo.fromXmlElement(
                      element))
              .toList());

  Future<List<BusCtyCode>> getCtyCodeList() =>
      get('/getCtyCodeList').then((elements) => elements
          .map((element) => BusCtyCode.fromXmlElement(element))
          .toList());
}
