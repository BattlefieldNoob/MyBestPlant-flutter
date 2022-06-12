class PlantInfo {
  final double dryness;
  final double rottenness;
  final double stress;
  final double parasite;

  const PlantInfo({
    required this.dryness,
    required this.rottenness,
    required this.stress,
    required this.parasite
  });
}

const WATERING = const PlantInfo(
    dryness: -0.1,
    rottenness: 0.05,
    stress: 0,
    parasite: 0
);

const FERTILIZE = const PlantInfo(
dryness: 0,
rottenness: 0.2,
stress: -0.1,
parasite: 0
);

const PARASITE_REMOVAL = const PlantInfo(
    dryness: 0,
    rottenness: 0,
    stress: 0.1,
    parasite: -0.2
);

const DAY_PASS = const PlantInfo(
    dryness: 0.1,
    rottenness: -0.1,
    stress: -0.1,
    parasite: 0.2
);