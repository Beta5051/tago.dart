import 'package:xml/xml.dart';
import 'model_to_string.dart';

class BusSttnNo with ModelToString {
  const BusSttnNo({
    required this.gpsLati,
    required this.gpsLong,
    required this.nodeId,
    required this.nodeNm,
    required this.nodeNo,
  });

  final double gpsLati;
  final double gpsLong;
  final String nodeId;
  final String nodeNm;
  final int? nodeNo;

  factory BusSttnNo.fromXmlElement(XmlElement element) => BusSttnNo(
        gpsLati: double.parse(element.getElement('gpslati')!.innerText),
        gpsLong: double.parse(element.getElement('gpslong')!.innerText),
        nodeId: element.getElement('nodeid')!.innerText,
        nodeNm: element.getElement('nodenm')!.innerText,
        nodeNo: int.tryParse(element.getElement('nodeno')?.innerText ?? ''),
      );
}
