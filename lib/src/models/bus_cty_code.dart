import 'package:xml/xml.dart';
import 'model_to_string.dart';

class BusCtyCode with ModelToString {
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
}
