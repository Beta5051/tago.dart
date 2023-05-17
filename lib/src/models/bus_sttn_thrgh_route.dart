import 'package:xml/xml.dart';

class BusSttnThrghRoute {
  const BusSttnThrghRoute({
    required this.routeId,
    required this.routeNo,
    required this.routeTp,
    required this.startNodeNm,
    required this.endNodeNm,
  });

  final String routeId;
  final String routeNo;
  final String routeTp;
  final String startNodeNm;
  final String endNodeNm;

  factory BusSttnThrghRoute.fromXmlElement(XmlElement element) =>
      BusSttnThrghRoute(
        routeId: element.getElement('routeid')!.innerText,
        routeNo: element.getElement('routeno')!.innerText,
        routeTp: element.getElement('routetp')!.innerText,
        startNodeNm: element.getElement('startnodenm')!.innerText,
        endNodeNm: element.getElement('endnodenm')!.innerText,
      );

  @override
  String toString() =>
      'BusSttnThrghRoute(routeId: $routeId, routeNo: $routeNo, routeTp: $routeTp, startNodeNm: $startNodeNm, endNodeNm: $endNodeNm)';
}
