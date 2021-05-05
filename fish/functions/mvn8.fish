# A mvn-alias that sets java home to jdk8 before invoking the real maven
function mvn8
    set -Ux JAVA_HOME /opt/jdk/jdk8u282-b08/
    /usr/bin/mvn $argv
end