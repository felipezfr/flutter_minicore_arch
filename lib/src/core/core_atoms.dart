import 'package:asp/asp.dart';
import 'package:flutter_minicore/src/core/exceptions/expections.dart';

final globalLoaderState = Atom(
  false,
  key: 'globalLoaderState',
);
final globalExceptionState = Atom<ThingsException?>(
  null,
  key: 'globalLoaderState',
  pipe: interval(
    const Duration(seconds: 1),
  ),
);
