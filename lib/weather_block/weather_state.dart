part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

// initial state
final class WeatherInitial extends WeatherState {}

// loading state
final class WeatherLoading extends WeatherState {}

// failture state
final class WeatherFailture extends WeatherState {}

// success state
final class WeatherSuccess extends WeatherState {
  final Weather weather;
  const WeatherSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
