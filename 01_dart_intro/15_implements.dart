void main(){
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 100 );

  print('Wind: ${ chargePhone( windPlant ) }');
  print('Nuclear: ${ chargePhone( nuclearPlant ) }');
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
  final PlanType type; // nuclear, viento, agua

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

// =============================
// =============================


class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;
  
  // ======================

  NuclearPlant({
    required this.energyLeft
  });

  // ======================

  @override
  void consumeEnergy(double amount) {
    energyLeft -= ( amount * 0.5 );
  }
}