data:extend({
  {
    type = "assembling-machine",
    name = "dna-collector",
    icon = "__dna__/graphics/entities/dna-collector.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dna-collector"},
    max_health = 50,
    corpse = "medium-remnants",
    -- resistances =
    -- {
      -- {
        -- type = "fire",
        -- percent = 70
      -- }
    -- },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      frame_width = 113,
      frame_height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    crafting_categories = {"dna"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "100kW",
    ingredient_count = 0,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  --[[{
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
  },--]]
})

function assembler2pipepictures()
  return
  {
    north =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/pipe-north.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {0.09375, 0.4375}
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/pipe-east.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {-0.71875, 0}
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/pipe-south.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {0.0625, -1}
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/pipe-west.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {0.78125, 0.03125}
    }
  }
end
function pipecoverspictures()
  return {
    north =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    east =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
      priority = "extra-high",
      width = 32,
      height = 32
    },
    south =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
      priority = "extra-high",
      width = 46,
      height = 52
    },
    west =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  }
end
