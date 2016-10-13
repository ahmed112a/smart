--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY DEV ammer                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ammer (@ahmedmaged33)          ▀▄ ▄▀ 
▀▄ ▄▀    chancel : @iraq112a               ▀▄ ▄▀ 
▀▄ ▄▀    orders   :  ملف التفال                ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]  

do 
local function oscar(extra, success, result) -- function result 
local oscar_id = result.from.peer_id 
local r = extra.r 
if result.from then 
if result.from.username then 
username = result.from.username 
else 
username = "nil" 
end 
end 
local msg = result 
local reply = msg['id'] 
local a = "تفوووو💦💦💦" 
reply_msg(reply, a, ok_cb, true) 
end 
local function run(msg, matches) 
local r = get_receiver(msg) 
local e = msg['id'] 
local f = "تدلل/ين😂" 
-- by oscarteam 
if is_momod(msg) and matches[1] == "اتفل عليه" and msg.reply_id then 
msgr = get_message(msg.reply_id, oscar, {r=r, }) 
reply_msg(e, f, ok_cb, true) 
end 
end 
return { 
patterns = { 
"^(اتفل عليه)$", 
}, 
run = run, 
} 

end 

--By @ahmedmaged33