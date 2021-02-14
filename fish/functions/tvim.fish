# Aliases nvim into a function that launches it in a dedicated terminator instance 
function tvim 
    terminator -m --profile nvim -x "nvim $argv"
end
