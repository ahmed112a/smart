
do

function run(msg, matches)
       if not is_momod(msg) then
        return "انت مجرد عضو"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "لم تقم بوضع رابط للكروب\nلوضع رابط للكروب اكتب ضع الرابط"
       end
         local text = "رابط المجموعه  :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "تم ارسال رابط المجموعة الى الخاص ✔"
end

return {
  patterns = {
    "^(الرابط خاص)$"
  },
  run = run
}

end

--[[
post by : @DevPointCH

للمزيد من الشروحات والملفات اشترك في قناة @DevPointCH

]]