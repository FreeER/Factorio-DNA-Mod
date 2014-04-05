data:extend({
  {
    type = "fluid",
    name = "dna",
    default_temperature = 15,
    max_temperature = 200,
    --heat_capacity = "1KJ",
    base_color = {r=0, g=1, b=0},
    flow_color = {r=0.1, g=0.5, b=0},
    icon = "__dna__/graphics/icons/dna.png",
    order = "a[fluid]-a[dna]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0,
  }
})
