--[[
# OSCAR TEAM
# @U_M_U
# @mustafadev
# BY : mustafadev 
##
]]
do

local function oscar(msg ,matches)
        if is_sudo(msg) then
local url = "http://a.top4top.net/p_195umsq1.jpg"
local mustafadev = download_to_file(url,'DeaD.jpg')
  send_photo(get_receiver(msg),mustafadev,ok_cb,false)

        elseif is_owner(msg) then
        local url = "http://b.top4top.net/p_195362f2.jpg"
local mustafadev = download_to_file(url,'DeaD.jpg')

      send_photo(get_receiver(msg),mustafadev,ok_cb,false)
        elseif is_momod(msg) then
        local url = "http://c.top4top.net/p_195eaam3.jpg"
local mustafadev = download_to_file(url,'DeaD.jpg')

   send_photo(get_receiver(msg),mustafadev,ok_cb,false)
        elseif not is_momod(msg) then
        local url = "http://d.top4top.net/p_195vnrq4.jpg"
local mustafadev = download_to_file(url,'DeaD.jpg')

     send_photo(get_receiver(msg),mustafadev,ok_cb,false)
        end
end

return { 
    patterns = { 
        "^(شنو اني)$"
    },
    run = oscar,
    
}
--by @mustafadev 
end
