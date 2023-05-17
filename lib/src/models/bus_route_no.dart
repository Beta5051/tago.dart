import 'package:xml/xml.dart';

class BusRouteNo {
  const BusRouteNo({
    required this.routeId,
    required this.routeNo,
    required this.routeTp,
    required this.startNodeNm,
    required this.endNodeNm,
    required this.startVehicleTime,
    required this.endVehicleTime,
  });

  final String routeId;
  final String routeNo;
  final String routeTp;
  final String startNodeNm;
  final String endNodeNm;
  final String? startVehicleTime;
  final String? endVehicleTime;

  factory BusRouteNo.fromXmlElement(XmlElement element) => BusRouteNo(
        routeId: element.getElement('routeid')!.innerText,
        routeNo: element.getElement('routeno')!.innerText,
        routeTp: element.getElement('routetp')!.innerText,
        startNodeNm: element.getElement('startnodenm')!.innerText,
        endNodeNm: element.getElement('endnodenm')!.innerText,
        startVehicleTime: element.getElement('startvehicletime')?.innerText,
        endVehicleTime: element.getElement('endvehicletime')?.innerText,
      );

  @override
  String toString() =>
      'BusRouteNo(routeId: $routeId, routeNo: $routeNo, routeTp: $routeTp, startNodeNm: $startNodeNm, endNodeNm: $endNodeNm, startVehicleTime: $startVehicleTime, endVehicleTime: $endVehicleTime)';
}
