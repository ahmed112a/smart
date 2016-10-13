do
    
local function run(msg, matches)
    if is_sudo(msg) then
        return "انت المطور مالي فديتك \n حياتي انته ما اعيش بدونك"
        
    elseif not is_sudo(msg) then
        return "انت ليس المطور مالي روح لحبيبتك"
    end
end
return {
    patterns = {
        "^(شنو انا)$"
    },
    run = run,
}
end