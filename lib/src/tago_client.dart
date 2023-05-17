import 'package:http/http.dart' as http;
import 'services/services.dart';

class TagoClient {
  TagoClient({
    required String serviceKey,
    http.Client? httpClient,
  })  : busSttnInfoInquireService = BusSttnInfoInquireServiceClient(
          serviceKey: serviceKey,
          httpClient: httpClient,
        ),
        busRouteInfoInquireService = BusRouteInfoInquireServiceClient(
          serviceKey: serviceKey,
          httpClient: httpClient,
        ),
        busArvlInfoInquireServiceClient = BusArvlInfoInquireServiceClient(
          serviceKey: serviceKey,
          httpClient: httpClient,
        );

  final BusSttnInfoInquireServiceClient busSttnInfoInquireService;
  final BusRouteInfoInquireServiceClient busRouteInfoInquireService;
  final BusArvlInfoInquireServiceClient busArvlInfoInquireServiceClient;
}
