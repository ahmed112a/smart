local function deactivate(msg, hash) 
  redis:hset(hash, 'stage', 'off') 
  return "تم الغاء الطلب" 
end 
local function activate(msg, hash) 
  redis:hset(hash, 'stage', 'one') 
  return "💟اكتب ما تريد ارساله يا 😁👇🏽 \n " ..msg.from.print_name

end
local function pre_process(msg) 
  local hash = 'اذاعة'..msg.to.id 
  local get_hash = redis:hgetall(hash) 
  local stage = get_hash.stage 
  if msg.text then 
    if msg.service then 
      return msg 
    end 
    if stage == 'one' then 
      redis:hset(hash, 'stage', 'two') 
      redis:hset(hash, 'text', msg.text) 
      send_large_msg(get_receiver(msg), "🤖هل انت متاكد ؟؟ 😘 \n 🚀 للتاكيد اكتب (نعم) \n 🚫او للآلغاء اكتب (لا) ") 
    end 
  end 
  return msg 
end 
local function run(msg, matches) 
  local hash = 'اذاعة'..msg.to.id 
  local get_hash = redis:hgetall(hash) 
  local stage = get_hash.stage 
  local data = load_data(_config.moderation.data) 
  if matches[1]:lower() == 'اذاعة' then 
    return activate(msg, hash) 
  end 
  if matches[1]:lower() == 'لا' and stage == 'two' then 
    return deactivate(msg, hash) 
  end 
  if matches[1]:lower() == 'نعم' and stage == 'two' then 
    local text = get_hash.text 
    for k,v in pairs(data) do 
      if string.match(k, '^%d+$') then 
        local id = tonumber(k) 
        vardump(id) 
        vardump(msg.to.id) 
        if id ~= tonumber(msg.to.id) then 
          send_large_msg('channel#id'..id, text) 
        end 
      end 
    end 
    send_large_msg('channel#id'..msg.to.id, 'تم ارسال الرسالة') 
    redis:hset(hash, 'stage', 'off') 
    redis:hset(hash, 'text', '') 
  end 
end 
return { 
  patterns = { 
    "^(اذاعة)$", 
    "^(نعم)$", 
    "^(لا)$", 
    }, 
  run = run, 
  pre_process = pre_process 
}