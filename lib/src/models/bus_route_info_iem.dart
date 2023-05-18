import 'package:xml/xml.dart';
import 'model_to_string.dart';

class BusRouteInfoIem with ModelToString {
  const BusRouteInfoIem({
    required this.routeId,
    required this.routeNo,
    required this.routeTp,
    required this.startNodeNm,
    required this.endNodeNm,
    required this.startVehicleTime,
    required this.endVehicleTime,
    required this.intervaltime,
    required this.intervalsattime,
    required this.intervalsuntime,
  });

  final String routeId;
  final String routeNo;
  final String routeTp;
  final String startNodeNm;
  final String endNodeNm;
  final String? startVehicleTime;
  final String? endVehicleTime;
  final int? intervaltime;
  final int? intervalsattime;
  final int? intervalsuntime;

  factory BusRouteInfoIem.fromXmlElement(XmlElement element) => BusRouteInfoIem(
        routeId: element.getElement('routeid')!.innerText,
        routeNo: element.getElement('routeno')!.innerText,
        routeTp: element.getElement('routetp')!.innerText,
        startNodeNm: element.getElement('startnodenm')!.innerText,
        endNodeNm: element.getElement('endnodenm')!.innerText,
        startVehicleTime: element.getElement('startvehicletime')?.innerText,
        endVehicleTime: element.getElement('endvehicletime')?.innerText,
        intervaltime:
            int.tryParse(element.getElement('intervaltime')?.innerText ?? ''),
        intervalsattime: int.tryParse(
            element.getElement('intervalsattime')?.innerText ?? ''),
        intervalsuntime: int.tryParse(
            element.getElement('intervalsuntime')?.innerText ?? ''),
      );
}
