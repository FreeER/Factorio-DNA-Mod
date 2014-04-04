data:extend({
  {
      type = "recipe",
      name = "dna-collector",
      energy_required = 10,
      ingredients = {{"iron-plate", 10}, {"iron-gear-wheel", 10}, {"iron-stick", 5}, {"computer", 1}}, --Up dna to 20 maybe?
      result = "dna-collector",
      enabled = "false",
      result_count = 1
  }
})

if data.raw.recipe["computer"] == nil then
  data:extend({
    {
        type = "recipe",
        name = "computer",
        energy_required = 10,
        ingredients = {{"iron-plate", 27}, {"iron-gear-wheel", 27}, {"copper-cable", 100}, {"small-lamp", 1}},
        result = "computer",
        enabled = "false",
        result_count = 1
    }
  })
end
