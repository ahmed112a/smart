
do

function run(msg, matches)
  return [[
🔸➖🔹➖🔸➖🔹➖🔸
💭 setadmin : رفع ادمن في المجموعة
💭 deadmin : حذف ادمن في المجوعة
💭 promote : رفع ادمن
💭 demote : حذف ادمن
💭 spromote : اضافة #مدير
💭 modlist : لاظهار ادمنية المجموعة
💭 admins : اضهار اداريين المجموعه
💭 setusername : لوضع معرف للكروب
🔸➖🔹➖🔸➖🔹➖🔸
💭 kick : لطرد العضو
💭 ban : لحظر العظر
💭 unban : فتح الخظر عن العضو
💭 kickme : للخروج من المجموعة
💭 silent : لتفعيل الصمت على احد الاعضاء
💭 clean mutelist: الغاء الصمت على العضو
💭 block : لحضر الكلمة
💭 words : لعرض الكلمات المحظورة
💭 unblock : لفتح حضر الكلمة
💭 me : لمعرفه موقعك في المجموعة
🔸➖🔹➖🔸➖🔹➖🔸
💭 rules : لاضهار القوانين
💭 setrules : لاظافة القوانين
💭 setphoto : لوضع صورة
💭 setname : لوضع اسم 
💭 about : لاضهار الوصف
💭 setabout : لاظافة الوصف
💭 id : لاظهار الايدي
💭 settings : اضهار اعدادات المجموعة
💭 info : اضهار المعلومات الخاصه بك
💭 info group : اضهار المعلومات الخاصه بالمجموعة
💭 s group : اضهار اعادادات المجموعة الثانية
💭 newlink : لصنع الرابط او تغيرة
💭 linkpv : للحصول على الرابط في الخاص
🔸➖🔹➖🔸➖🔹➖🔸
💭 close member : لقفل اضافة المجموعة
💭 open member : للفتح اضافة المجموعة
💭 close text : لقفل دردشة المجموعة
💭 open text : فتح الدردشه 
💭 close photo : لمنع إرسال الصور 
💭 open photo : للسماح بإرسال الصور 
💭 close audio : لمنع البصمات 
💭 open audio : للسماح بإرسال البصمات 
💭 close video : لمنع ارسال فديو 
💭 open video : للسماح بإرسال فديو 
💭 close links : لمنع الروابط 
💭 open links : للسماح بإرسال روابط
💭 close flood : لمنع التكرار 
💭 open flood : للسماح بلتكرار 
💭 close sticker : لمنع الملصقات 
💭 open sticker : للسماح بلملصقات
💭 close gifs : لمنع الصور المتحركة
💭 open gifs : للسماح بالصور المتحركة
💭 close documents : لمنع ارسال الملفات 
💭 open documents : للسماح بإرسال الملفات 
💭 close spam : لمنع الكلايش الطويلة
💭 open spam : للسماح بلكلايش الطويلة
💭 close rtl : لمنع اطافة جماعة
💭 open rtl : للسماح بإضافة جماعة
💭 close arabic : لمنع اللغة ألعربيه 
💭 open arabic : للسماح بلغه ألعربيه
🔸➖🔹➖🔸➖🔹➖🔸
#المطور
@ahmedmaged33
#للمحضورين
@ahmedmaged333bot
اشتراك وياكم بلقناه
https://telegram.me/joinchat/BLJ9VDv8N6fKsk8QN6YWsw 
 ]]

end

return {
  description = "Shows bot help", 
  -- usage = help2: Shows bot help",
  patterns = {
    "^قائمه 3"
  }, 
  run = run 
}

end
