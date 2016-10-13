do

local function saeco(msg,matches)
if matches[1] == "ايدي" then
return " اهلا عزيزي ايديك:id: هو : "..msg.from.id
end
if matches[1] == "اسمي" then 
return "🏻 اهلا عزيزي اسمك هو : "..msg.from.print_name
end
if matches[1] == "ايدي الكروب" then 
return "ايدي الكروب هو : "..msg.to.id
end
if matches[1] == "رقمي" then 
return "اهلا عزيزي رقمك هو :"..(msg.from.phone or "لايوجد" ) 
end

if matches[1] == "اسم الكروب" then 
return " اسم الكروب هو : "..msg.to.title
end
end

return {
patterns = {
"^(ايدي)$",
"^(اسمي)$",
"^(ايدي الكروب)$",
"^(رقمي)$",
"^(اسم الكروب)$",
},
run = saeco,
}
end
--- dev by @saeco
--- Tv channel @Devhelptv 
--- all Thx to @lua_lang