void main(){
  final windPlant = WindPlant( initialEnergy: 9 );

  print('Wind: ${ chargePhone( windPlant ) }');
}

// =============================
// =============================

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No hay suficiente energía');
  }

  return plant.energyLeft - 10;
}

// =============================
// =============================

enum PlanType {nuclear, wind, water}

// =============================
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

// =============================
// =============================

@override
class WindPlant extends EnergyPlant {
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlanType.wind );

    void consumeEnergy(double amount) {
      energyLeft -= amount;
    }
}