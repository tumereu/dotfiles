# A mvn-alias that sets java home to jdk17 before invoking the real maven
function mvn17
    set -Ux JAVA_HOME /opt/jdk/jdk-17.0.1+12/
    /opt/maven/3.8.4/bin/mvn $argv
end
