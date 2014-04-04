data:extend({
  {
    type = "container",
    name = "dna-collector",
    minable = {hardness = 0.2, mining_time = 0.5, result = "dna-collector"},
    icon = "__dna__/graphics/entities/dna-collector.png",
    flags = {"placeable-player", "placeable-enemy", "player-creation", "placeable-off-grid"},
    max_health = 5,
    collision_box = {{-1.25, -1.5}, {1.25, 1.5}},
    selection_box = {{-1.3, -1.6}, {1.3, 1.6}},
    inventory_size = 1,
    picture =
    {
      filename = "__dna__/graphics/entities/dna-collector.png",
      width = 80,
      height = 94
    }
  },
})
