import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<PageViewEndEvent>((event, emit) => emit(OnboadingGetStartedState()));
    on<NormalButtomSheetEvent>((event, emit) => emit(OnboadingNormalState()));
  }
}
