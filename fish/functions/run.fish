# Runs whatever command is set as RUN_DIR_CMD env variable
function run 
    eval "$RUN_DIR_CMD $argv"
end
