do 

local function DevPoint(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "انا روبورت الي اذا تحتاج شي او اي استفسار راسل المطورين \n @ahmedmaged33 \n  🐯🍷\n ممكن تشتركون بلقناه \n https://telegram.me/joinchat/BLJ9VDv8N6fKsk8QN6YWsw \n دخلو للقناه متخسرون شي "
     
  end 
   
end 

-- code by osacar

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = DevPoint, 
} 

end 
-- post by @DevPointCH