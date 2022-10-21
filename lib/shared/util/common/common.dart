import 'package:example/core.dart';

extension CommonExtension on DateTime {
  get dMMMykkss {
    return DateFormat("d MMM y kk:ss").format(this);
  }

  get dMMMy {
    return DateFormat("d MMM y").format(this);
  }

  get kkss {
    return DateFormat("kk:ss").format(this);
  }
}
