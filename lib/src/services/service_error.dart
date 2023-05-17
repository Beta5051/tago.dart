import 'package:xml/xml.dart';

class ServiceError {
  const ServiceError({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;

  static ServiceError? getError(XmlDocument document) {
    print(document.toXmlString(pretty: true));
    final headers = document.findAllElements('cmmMsgHeader');

    final isOpenDataPortal = headers.isNotEmpty;

    final header = isOpenDataPortal
        ? headers.first
        : document.findAllElements('header').first;

    final code = int.parse(header
        .getElement(isOpenDataPortal ? 'returnReasonCode' : 'resultCode')!
        .innerText);

    if (code == 0) return null;

    final message = header
        .getElement(isOpenDataPortal ? 'returnAuthMsg' : 'resultMsg')!
        .innerText;

    return ServiceError(
      code: code,
      message: message,
    );
  }

  @override
  String toString() => 'ServiceError(code: $code, message: $message)';
}
