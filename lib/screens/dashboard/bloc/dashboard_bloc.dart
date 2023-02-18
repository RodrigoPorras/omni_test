import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitialState()) {
    on<DashboardChangedIndexBnbEvent>(_changedIndexBnbEventToState);
    oNavigator.currentNavigatorStateKey = oNavigator.navigatorStateKeys.first;
  }

  _changedIndexBnbEventToState(
      DashboardChangedIndexBnbEvent event, Emitter<DashboardState> emit) async {
    oNavigator.currentNavigatorStateKey =
        oNavigator.navigatorStateKeys[event.newIndex];

    emit(DashboardNewBnbIndex(newIndex: event.newIndex));
  }
}
