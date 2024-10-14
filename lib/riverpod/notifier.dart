import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final riverpodProvider = StateNotifierProvider.autoDispose<RiverpodNotifier,CreateTaskState>((ref) {
  return RiverpodNotifier();
});


class RiverpodNotifier extends StateNotifier<CreateTaskState> {
  RiverpodNotifier() : super( LandingPageInitial());

  createTask(String title,String description){




  }

}
