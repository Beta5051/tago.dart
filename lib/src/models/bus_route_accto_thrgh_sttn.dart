import 'package:xml/xml.dart';
import 'model_to_string.dart';

class BusRouteAcctoThrghSttn with ModelToString {
  const BusRouteAcctoThrghSttn({
    required this.routeId,
    required this.nodeId,
    required this.nodeNm,
    required this.nodeNo,
    required this.nodeOrd,
    required this.gpsLati,
    required this.gpsLong,
    required this.upDownCd,
  });

  final String routeId;
  final String nodeId;
  final String nodeNm;
  final int? nodeNo;
  final int nodeOrd;
  final double gpsLati;
  final double gpsLong;
  final int? upDownCd;

  factory BusRouteAcctoThrghSttn.fromXmlElement(XmlElement element) =>
      BusRouteAcctoThrghSttn(
        routeId: element.getElement('routeid')!.innerText,
        nodeId: element.getElement('nodeid')!.innerText,
        nodeNm: element.getElement('nodenm')!.innerText,
        nodeNo: int.tryParse(element.getElement('nodeno')?.innerText ?? ''),
        nodeOrd: int.parse(element.getElement('nodeord')!.innerText),
        gpsLati: double.parse(element.getElement('gpslati')!.innerText),
        gpsLong: double.parse(element.getElement('gpslong')!.innerText),
        upDownCd: int.tryParse(element.getElement('updowncd')?.innerText ?? ''),
      );
}
