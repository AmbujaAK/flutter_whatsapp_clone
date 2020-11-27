import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_whatsapp_clone/utils/my_app_settings.dart';
import 'package:meta/meta.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  MyAppSettings _myAppSettings;

  SettingsBloc(this._myAppSettings) : super(SettingsInitial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {}
}
