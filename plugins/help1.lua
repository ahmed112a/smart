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
if is_momod(msg) and matches[1]== "قائمه 1" then
return [[ 
   ➖➖➖ ➖➖➖ ➖➖➖ 
❣ حظر : لحضر العضو
❣ دي : لطرد العضو
❣ الغاء الحظر : فتح الخظر عن العضو
❣ مغادره : للخروج من المجموعة
❣ كتم  : لتفعيل الصامت على احد الاعضاء
❣ كتم  : الغاء الصامت على العضو
❣ منع كلمه + الكلمه  : لحضر كلمة في مجموعه
❣ الغاء المنع + الكلمه  : لفتح حضر الكلمة
❣ قائمه المنع : لعرض الكلمات المحظورة
   ➖➖➖ ➖➖➖ ➖➖➖ 
❣ قفل الاضافه  : لمنع الاضافه ب المجموعه
❣ فتح الاضافه  : لفتح الاضافه
❣ قفل الدردشه : لمنع الدردشه للمجموعه
❣ فتح الدردشه  : للسماح للدردشه للمجموعه
❣ قفل المجموعه : لتقعيل وضع صامت للاعضاء فقط
❣ فتح المجموعه : لفتح وضع صامت للعضاء
❣ قفل الصور : لمنع إرسال الصور 
❣ فتح الصور  : للسماح بإرسال الصور 
❣ قفل الصوت  : لمنع البصمات 
❣ فتح الصوت   : للسماح بإرسال البصمات 
❣ قفل الفيديو  : لمنع ارسال فديو 
❣ فتح الفيديو   : للسماح بإرسال فديو 
❣ قفل الروابط   : لمنع الروابط 
❣ فتح الروابط  : للسماح بإرسال روابط
❣ قفل التكرار  : لمنع التكرار 
❣ فتح التكرار   : للسماح بلتكرار 
❣ قفل الملصقات : لمنع الملصقات 
❣ فتح الملصقات : للسماح بلملصقات
❣ قفل الصور المتحركه : لمنع الصور المتحركة
❣ فتح الصور المتحركه  : للسماح بالصور المتحركة
❣ قفل الفايلات  : لمنع ارسال الملفات 
❣ فتح الفايلات   : للسماح بإرسال الملفات 
❣ قفل الكلايش : لمنع الكلايش الطويلة
❣ فتح الكلايش : للسماح بلكلايش الطويلة
❣ قفل الاضافه الجماعيه : لمنع الاعضاء من الاضافه
❣ فتح الاضافه الجماعيه  : لسماح للاعضاء بالاضافه
❣ قفل التوجيه  :  لمنع اعاده التوجيه
❣ فتح التوجيه  :  لفتح اعاده التوجيه
❣ قفل البوتات  :  لقفل اضاقه البوتات
❣ فتح البوتات  :  لفتح اضاقه البوتات
❣ شنو اني  :لمعرفه موقعك بلكروب
❣ موقعي  : لمعرفه موقعك في للكروب
❣ تشغيل البوت  :  لتشغيل البوت في الكروب
❣ اطفاء البوت  :  لاطفاء البوت في الكروب
❣ me  : لمعرفه موقعك في للكروب
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
"(قائمه 1)"
},
run = run 
}
end