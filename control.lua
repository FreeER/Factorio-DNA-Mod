require "util"
require "defines"

game.oninit(function()
  glob.dna = {}
  glob.release = false
  if not glob.release then
    game.player.insert{name="dna-collector", count=10}
  end
end)

game.onload(function()
  if not glob.dna then glob.dna = {} end
  if not glob.release then glob.release = false end
end)

game.onevent(defines.events.onbuiltentity, function(event)
  if (event.createdentity.name == "dna-collector") then
    table.insert(glob.dna, event.createdentity)
    if not dnaDonatorsAvail(event.createdentity) then
      event.createdentity.active = false
      game.player.print("This "..event.createdentity.localisedname.." does not have any corpses nearby to get dna from")
    end
  end
end)

game.onevent(defines.events.ontick, function(event)
  if (event.tick%300 == 1) and glob.dna[1] then --do once every 5 seconds
    for index, collector in ipairs(glob.dna) do
      if not collector.valid then
        table.remove(glob.dna, index)
      else
        if not dnaDonatorsAvail(collector) then collector.active = false else collector.active = true end
      end
    end
  end
end)

function getboundingbox(position, radius)
  return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius}
end

function dnaDonatorsAvail(entity)
    local found = false
    for _, corpse in pairs(game.findentitiesfiltered{area={getboundingbox(entity.position, 5)}, type="corpse"}) do
      if (corpse.name:sub(-8) ~= "remnants") then
          found = true
          break
      end
    end
    if not found then
      for _, unit in pairs(game.findentitiesfiltered{area={getboundingbox(entity.position, 10)}, type="unit"}) do
        if unit.force.equals(game.player.force) then
            found = true
            break
        end
      end
    end
  return found  
end