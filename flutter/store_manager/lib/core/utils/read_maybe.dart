import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

T? maybeRead<T>(BuildContext context) {
  try {
    return context.read<T>();
  } catch (_) {
    return null;
  }
}
