void main(){
  // final windPlant = EnergyPlant();
}

enum PlanType {nuclear, wind, water}

// =============================

abstract class EnergyPlant {
  double energyLeft;
  PlanType type; // nuclear, viento, agua

  // ======================

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  // ======================

  void consumeEnergy(double amount);
}