-- made by { @Mouamle }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "هلو" -- msg 
rs[1] =  "اهلا وسهلا ❤️🙈" -- reply

ws[2] = "@ahmedmaged33" -- msg
rs[2] = "هذا الي صنعني فديت ربه 🙈❤️" -- reply

ws[3] = "شلونكم" -- msg
rs[3] = "اني بالنسبة اليه دايح شوف بقيه الاعضااء 😂🖕" -- reply

ws[4] = "ضوجه" -- msg 
rs[4] = "شي اكيد الكبل ماكو 😂 لو بعدك/ج مازاحف/ة 🙊😋" -- reply

ws[5] = "بوت" -- msg 
rs[5] = "نعم" -- reply

ws[6] = "هلا" -- msg 
rs[6] = "هلاوات" -- reply

ws[7] = "احم" -- msg 
rs[7] = "احمات تفضل" -- reply

ws[8] = "مرحبا" -- msg 
rs[8] = "مراحب" -- reply

ws[9] = "تحبني" -- msg
rs[9] = "احبك يا لمعه عيني️😘" -- reply 

ws[10] = "بوسني" -- msg
rs[10] = "اًٍُّمـ😘ٌـ💋ـٌ😘ــٌ💋ـ😘ـٌّواًحّ❤️" -- reply 

ws[11] = "منو ادمن" -- msg
rs[11] = "انا ادمن😍️" -- reply

ws[12] = "ااحبك" -- msg 
rs[12] = "اني اكثر" -- reply

ws[13] = "باي" -- msg 
rs[13] = "بايات" -- reply

ws[14] = "بايات" -- msg 
rs[14] = "مال درج😂️" -- reply

ws[15] = "تخليني" -- msg 
rs[15] = "شنو هل سوالف"-- reply

ws[16] = "يا خره" -- msg 
rs[16] = "شددحس" -- reply

ws[17] = "يا خره شنو هاذ" -- msg 
rs[17] = "شددحس" -- reply

ws[17] = "نعل" -- msg 
rs[17] = "شددحس" -- reply

ws[18] = "نعال" -- msg 
rs[18] = "شددحس" -- reply

ws[19] = "فاشل" -- msg 
rs[19] = "شددحس" -- reply

ws[20] = "مغادره" -- msg 
rs[20] = "تشرفنه بمعرفتك" -- reply

ws[21] = "قناتي" -- msg 
rs[21] = "@iraq112a" -- reply

ws[22] = "قناه" -- msg 
rs[22] = "@iraq112a" -- reply

ws[23] = "اشترك" -- msg 
rs[23] = "@iraq112a" -- reply

ws[24] = "اشتركو" -- msg 
rs[24] = "@iraq112a" -- reply

ws[25] = "شكو ماكو" -- msg 
rs[25] = "صافيه دافيه ولدجاجه حافيه" -- reply

ws[26] = "وينكم" -- msg 
rs[26] = "يمكن صار رمي وشردو" -- reply

ws[27] = "راح اشتاقلكم" -- msg 
rs[27] = "واحنه اكثر" -- reply

ws[28] = "بوتي" -- msg 
rs[28] = "ها سيدي" -- reply

ws[29] = "اتفل" -- msg 
rs[29] ="انچب لك نعال😡احترم ولطم👌️️" 

ws[30] = "دقيقة" -- msg 
rs[30] ="صار 🕜 ساعة مو دقيقة😍❤️️" 

-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "Mouamle" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Mouamle" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end