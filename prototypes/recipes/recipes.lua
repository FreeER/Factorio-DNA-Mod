data:extend({
	{
		type = "recipe-category",
		name = "dna"
	},

  {
      type = "recipe",
      name = "dna-collector",
      energy_required = 30,
      ingredients = {{"iron-plate", 10}, {"iron-gear-wheel", 10}, {"iron-stick", 20}, {"computer", 1}},
      result = "dna-collector",
      enabled = "false",
      result_count = 1
  },
  {
		type = "recipe",
		name = "dna",
		category = "dna",
		energy_required = 10,
		ingredients ={},
		results=
		{
			{type="fluid", name="dna", amount=1}
		},
		enabled = "false"
	},
})

if data.raw.recipe["computer"] == nil then
  data:extend({
    {
        type = "recipe",
        name = "computer",
        energy_required = 10,
        ingredients = {{"processing-unit", 1}, {"plastic-bar", 25}, {"small-lamp", 1}},
        result = "computer",
        enabled = "false",
        result_count = 1
    }
  })
end
