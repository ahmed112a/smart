do 
local function run(msg, matches) 
 if is_sudo(msg) then 
   local sudo = "عزيز موقعك ومعلوماتك هنا 👇🏌"..msg.from.first_name.."\n" 
   .."🆔👤ايديك :("..msg.from.id..")\n" 
   .."⛽️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رقمك :("..(msg.from.phone or " لا يوجد")..")\n" 
   .."موقعك👤: انته مطور مالتي 🕵👋 " 
return reply_msg(msg.id, sudo, ok_cb, true) 
 end 
 if is_owner(msg) then 
 local owner = "عزيزي موقعك ومعلوماتك هنا 👇🏌"..msg.from.first_name.."\n" 
   .."🆔👤ايديك :("..msg.from.id..")\n" 
   .."⛽️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رقمك :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."👤موقعك :انته مدير المجموعه 🚨 👥 »" 
return reply_msg(msg.id, owner, ok_cb, true) 
 end 
 if is_admin1(msg) then 
local admin1 = "عزيزي موقعك ومعلوماتك هنا👷👇🏼" 
   .."🆔👤ايديك :("..msg.from.id..")\n" 
   .."⛽️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رقمك :("..(msg.from.phone or " لايوجد ")..")\n" 
   .."👷موقعك :انته ادراي 🙋» " 
return reply_msg(msg.id, admin1, ok_cb, true) 
end 
if is_momod(msg) then 
      local admin = "عزيزي موقعك ومعلوماتك هنا 👮👇🏼" ..msg.from.first_name.. "\n" 
   .."🆔👤ايديك :("..msg.from.id..")\n" 
   .."⛽️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رقمك :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."👮موقعك :انته ادمن المحترم 🎩" 
return reply_msg(msg.id, admin, ok_cb, true) 
 end 
 if not is_momod(msg) then 
      local member = "عزيزي موقعك ومعلوماتك هنا🕵👇🏼" ..msg.from.first_name.. "\n" 
   .."🆔👤ايديك :("..msg.from.id..")\n" 
   .."📌معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رقمك :("..(msg.from.phone or "لايوجد " )..")\n" 
   .."🚸موقعك :انته دايح قصدي عضو 😹💔» " 
return reply_msg(msg.id, member, ok_cb, true) 
 end 
end 

return { 
  patterns = { 
       "^(موقعي)$", 
  }, 
  run = run, 
} 
end
