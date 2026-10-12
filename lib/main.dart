import 'package:flutter/material.dart';

class WeatherHeaderWidget extends StatelessWidget {
  final String cityName;
  final double temperature;
  final String condition;

  const WeatherHeaderWidget({
    super.key,
    required this.cityName,
    required this.temperature,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityName,
          style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        const Text(
          'Сегодня, 18 ноября',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 30),

        Text(
          '${temperature.toStringAsFixed(1)}°C',
          style: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w200,
            color: Colors.blueAccent,
          ),
        ),
        Text(
          condition.toUpperCase(),
          style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.black54),
        ),
      ],
    );
  }
}