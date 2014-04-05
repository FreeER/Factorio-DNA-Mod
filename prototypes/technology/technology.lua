data:extend({
  {
    type = "technology",
    name = "dna",
    icon = "__dna__/graphics/technology/dna.png",
    prerequisites = {"advanced-electronics", "alien-technology"},
    effects =
      {
        {
          type = "unlock-recipe",
          recipe = "computer"
        },
        {
          type = "unlock-recipe",
          recipe = "dna-collector"
        },
        {
          type = "unlock-recipe",
          recipe = "dna"
        }
      },
    unit =
      {
        count = 200,
        ingredients =
          {
            {"science-pack-1", 2},
            {"science-pack-2", 2},
            {"science-pack-3", 2},
            {"alien-science-pack", 2}
          },
        time = 60
      },
  }
})
