# A http-alias that logs in to the htd-session, used by the htd alias
function htd-login
    http -v --session=htd --style=fruity --json POST http://localhost:8080/abakus/mobile/direct/login username=abakus password=secret
end