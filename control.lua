require "util"
require "defines"

game.oninit(function()
  glob.dna = {}
  glob.release = true
  if not glob.release then
    game.player.insert{name="dna-collector", count=10}
    game.player.insert{name="dna", count=100}
  end
end)

game.onevent(defines.events.onbuiltentity, function(event)
  if (event.createdentity.name == "dna-collector") then
    table.insert(glob.dna, event.createdentity)
  end
end)

game.onevent(defines.events.ontick, function(event)
  if (event.tick%300 == 1) and glob.dna[1] then --do once every 5 seconds
    for index, dna in ipairs(glob.dna) do
      if not dna.valid then
        table.remove(glob.dna, index)
      else
        for _, corpse in pairs(game.findentitiesfiltered{area={getboundingbox(dna.position, 1)}, type="corpse"}) do
          if (corpse.name:sub(-8) ~= "remnants") then
            if corpse.name:sub(-14) == "spawner-corpse" then
              dna.insert{name="dna", count=4}
            else
              dna.insert{name="dna", count=1}
            end
            break
          end
        end
      end
    end
  end
end)

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius}
end
