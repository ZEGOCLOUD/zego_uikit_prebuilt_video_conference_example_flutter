// Dart imports:
import 'dart:math' as math;

import 'secret.dart';

const int yourAppID = YourSecret.appID;
const String yourAppSign = YourSecret.appSign;

/// Note that the userID needs to be globally unique,
final String localUserID = math.Random().nextInt(10000).toString();

/// Users who use the same callID can in the same call.
const String callID = 'group_call_id';
