part of 'onboarding_bloc.dart';

sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}

final class OnboadingNormalState extends OnboardingState {}

final class OnboadingGetStartedState extends OnboardingState {}
