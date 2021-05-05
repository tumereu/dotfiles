# A mvn-alias that sets java home to jdk7 before invoking the real maven
function mvn7
    set -Ux JAVA_HOME /opt/jdk/jdk1.7.0_80/
    /usr/bin/mvn $argv
end