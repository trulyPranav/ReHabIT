class MatchPercentage {
  final double healthyFlex;
  final double paralysedFlex;
  
  MatchPercentage({
    required this.healthyFlex,
    required this.paralysedFlex
  });

  double get error => (healthyFlex - paralysedFlex).abs();

  double get matchPercentage => 100 - ( (error/healthyFlex+0.01) * 100);
}