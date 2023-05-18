# tago.dart
국토교통부 TAGO API 라이브러리

## Usage
```yaml
dependencies:
  tago:
    git: git@github.com:Beta5051/tago.dart.git
```

```dart
import 'package:tago/tago.dart';

const serviceKey = 'YOUR_SERVICE_KEY';

void main() async {
    final tago = TagoClient(serviceKey: serviceKey);

    final codes = await tago.busSttnInfoInquireService.getCtyCodeList();

    print(codes);
}
```