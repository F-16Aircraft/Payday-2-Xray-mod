-- X-RAY VISION v2.0 (post infamy edition)
-- MARKS ENEMIES,CIVIES,CAMS
function mark_enemies()     
        for u_key,u_data in pairs(managers.enemy:all_civilians()) do
  u_data.unit:contour():add( "mark_enemy" )
 end
 for u_key,u_data in pairs(managers.enemy:all_enemies()) do
  u_data.unit:contour():add( "mark_enemy" )
 end
 for u_key, unit in pairs( managers.groupai:state()._security_cameras ) do
  --unit:contour():add( "mark_enemy" )
 end
 local units = World:find_units_quick( "all" )
 for i,unit in ipairs( units ) do
  if unit:contour() then 
                        unit:contour():add( "mark_unit" )
  end
 end
end
 function UnitNetworkHandler:mark_enemy( unit, marking_strength, sender ) 
end
if not _markingToggle then _marktoggle = nil _markingToggle = true
 else _markingToggle = nil 
end
if not _gameUpdate then _gameUpdate = GameSetup.update 
end
do
 local _gameUpdateLastMark
 function GameSetup:update( t, dt )
  _gameUpdate(self, t, dt)
  _gameUpdateLastMark = t 
  if _markingToggle then
   mark_enemies()
  else
   if not _marktoggle then
    _marktoggle = true
    for u_key,u_data in pairs(managers.enemy:all_enemies()) do
     u_data.unit:contour():remove( "mark_enemy" )
    end
   end
  end
 end
end