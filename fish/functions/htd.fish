# A http-alias that specifies some mandatory parameters for use with Abakus Direct
function htd
    http --session=htd --style=fruity --json $argv[1] http://localhost:8080/abakus/mobile/direct/$argv[2] $argv[3..-1]
end