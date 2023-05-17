import 'package:xml/xml.dart';

class BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo {
  const BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo({
    required this.nodeId,
    required this.nodeNm,
    required this.routeId,
    required this.routeNo,
    required this.routeTp,
    required this.arrprevstationcnt,
    required this.vehicleTp,
    required this.arrTime,
  });

  final String nodeId;
  final String nodeNm;
  final String routeId;
  final String routeNo;
  final String routeTp;
  final int arrprevstationcnt;
  final String? vehicleTp;
  final int arrTime;

  factory BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo.fromXmlElement(
          XmlElement element) =>
      BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo(
        nodeId: element.getElement('nodeid')!.innerText,
        nodeNm: element.getElement('nodenm')!.innerText,
        routeId: element.getElement('routeid')!.innerText,
        routeNo: element.getElement('routeno')!.innerText,
        routeTp: element.getElement('routetp')!.innerText,
        arrprevstationcnt:
            int.parse(element.getElement('arrprevstationcnt')!.innerText),
        vehicleTp: element.getElement('vehicletp')?.innerText,
        arrTime: int.parse(element.getElement('arrtime')!.innerText),
      );

  @override
  String toString() =>
      'BusSttnAcctoSpcifyRouteBusArvlPrearngeInfo(nodeId: $nodeId, nodeNm: $nodeNm, routeId: $routeId, routeNo: $routeNo, routeTp: $routeTp, arrprevstationcnt: $arrprevstationcnt, vehicleTp: $vehicleTp, arrTime: $arrTime)';
}
