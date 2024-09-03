PLUGIN.name = "getammo"
PLUGIN.author = "Buterbrod"
PLUGIN.description = "maybe good for ivent-masters"


    local ammoTypes = {
   --  ["5.45"] = "ammo_5_45"
  
    }


    ix.command.Add("getammo", {
        description = "getting ammos",
        adminOnly = true, 
        OnRun = function(self, client)
            for ammoName, ammoType in pairs(ammoTypes) do
                client:GiveAmmo(500, ammoType)
            end
        end
    })
