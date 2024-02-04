part of 'onboarding_bloc.dart';

sealed class OnboardingEvent {}

class PageViewEndEvent extends OnboardingEvent {}

class NormalButtomSheetEvent extends OnboardingEvent {}
