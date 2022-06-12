parasites = 100
dryness = 100
rottenness = 100
stress = 100
passed_days = 0

improvements = {
  "watering": {
    "parasite": 0,
    "dryness": -10,
    "rottenness": 5,
    "stress": 0
  },
  "fertilize": {
    "parasite": 0,
    "dryness": 0,
    "rottenness": 20,
    "stress": -10
  },
  "parasite_removal": {
    "parasite": -20,
    "dryness": 0,
    "rottenness": 0,
    "stress": 10
  },
  "day_passed": {
    "parasite": 10,
    "dryness": 20,
    "rottenness": -10,
    "stress": -10
  }
}

# With DAYS_IMPROVEMENT_COEFFICENT_RATIO = 140
# Days  Ratio
# 5     1.04
# 10    1.07
# 20    1.14
# 40    1.29
# 60    1.43
# 100   1.71
# 140   2.00
# 160   2.14
# 200   2.43
# 250   2.79
# 300   3.14
# 365   3.61
# 480   4.43
DAYS_IMPROVEMENT_COEFFICENT_RATIO = 140


def day_passed
  action_taken(action)

  passed_days += 1
end

def action_taken(action)
  parasite += improvements[action]["parasite"] * improvement_coefficent(passed_days)
  dryness += improvements[action]["dryness"] * improvement_coefficent(passed_days)
  rottenness += improvements[action]["rottenness"] * improvement_coefficent(passed_days)
  stress += improvements[action]["stress"] * improvement_coefficent(passed_days)
end

def improvement_coefficent(passed_days)
  1 + passed_days / DAYS_IMPROVEMENT_COEFFICENT_RATIO
end
