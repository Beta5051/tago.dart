import 'package:xml/xml.dart';
import 'model_to_string.dart';

class BusSttnThrghRoute with ModelToString {
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
}
