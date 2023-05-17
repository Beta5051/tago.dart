import 'package:xml/xml.dart';

class BusCtyCode {
  const BusCtyCode({
    required this.cityCode,
    required this.cityName,
  });

  final int cityCode;
  final String cityName;

  factory BusCtyCode.fromXmlElement(XmlElement element) => BusCtyCode(
        cityCode: int.parse(element.getElement('citycode')!.innerText),
        cityName: element.getElement('cityname')!.innerText,
      );

  @override
  String toString() => 'CtyCode(cityCode: $cityCode, cityName: $cityName)';
}
