
local function saeco(msg,matches)
if matches[1] == "ضع مذكره" then
local saeco = "note"..msg.from.id
redis:set(saeco, matches[2])
local fuck = "🚶🏻اهلا"..msg.from.first_name.."\n".."\n".."📝ملاحضتك قمت بحفظها بنجاح ✅"
return reply_msg(msg.id, fuck, ok_cb, false)
end

if matches[1] == "حذف المذكره" then
local saeco = "note"..msg.from.id
redis:del(saeco)
local fuck2 = "🚶🏻اهلاً "..msg.from.first_name.."\n".."\n".."📝لقد قمت بحذف المذكرة بنجاح  🗑"
return reply_msg(msg.id, fuck2, ok_cb, false)
end

if matches[1] == "المذكره" then
local saeco = "note"..msg.from.id
local iraq = "🚶🏻اهلاً "..msg.from.first_name.."\n"
.."📝ملاحضتك هي".."\n"..redis:get(saeco).."\n"
return reply_msg(msg.id, iraq, ok_cb, false)
end
end
return {
    patterns = {
        "^(ضع مذكره) (.*)$",
        "^(حذف المذكره)$",
        "^(المذكره)$"
    },
    run = saeco
}
-- Dev By @IpexTeam 