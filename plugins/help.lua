--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmed maged                    ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmed maged (@ahmedmaged33)   ▀▄ ▄▀ 
▀▄ ▄▀      canchel : @iraq112a             ▀▄ ▄▀   
▀▄ ▄▀          Orders  : الاوامر              ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "مساعده" then
return [[ 


قائمه اوامر البوت
   ➖➖➖ ➖➖➖ ➖➖➖ 

❣ قائمه 1  : قائمه الحمايه
❣ قائمه 2  : قائمه خصائص الكروب
❣ قائمه 3  : قائمه الاوامر الانكليزيه
   ➖➖➖ ➖➖➖ ➖➖➖ 
❣ قائمه 4  : قائمه المطورين
   ➖➖➖ ➖➖➖ ➖➖➖ 
   
#المطور
@ahmedmaged33
#للمحضورين
@ahmedmaged333bot
اشتراك وياكم بلقناه
https://telegram.me/joinchat/BLJ9VDv8N6fKsk8QN6YWsw 

]]
end

if not is_momod(msg) then
return " انت مجرد عضو 😎"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(مساعده)"
},
run = run 
}
end