import 'package:xml/xml.dart';

class BusCrdntPrxmtSttn {
  const BusCrdntPrxmtSttn({
    required this.gpsLati,
    required this.gpsLong,
    required this.nodeId,
    required this.nodeNm,
    required this.cityCode,
  });

  final double gpsLati;
  final double gpsLong;
  final String nodeId;
  final String nodeNm;
  final int cityCode;

  factory BusCrdntPrxmtSttn.fromXmlElement(XmlElement element) =>
      BusCrdntPrxmtSttn(
        gpsLati: double.parse(element.getElement('gpslati')!.innerText),
        gpsLong: double.parse(element.getElement('gpslong')!.innerText),
        nodeId: element.getElement('nodeid')!.innerText,
        nodeNm: element.getElement('nodenm')!.innerText,
        cityCode: int.parse(element.getElement('citycode')!.innerText),
      );

  @override
  String toString() =>
      'BusCrdntPrxmtSttn(gpsLati: $gpsLati, gpsLong: $gpsLong, nodeId: $nodeId, cityCode: $cityCode)';
}
