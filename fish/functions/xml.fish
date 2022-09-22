# Defined in - @ line 1
function xml --wraps='xmllint --format' --description 'alias xml=xmllint --format'
  xmllint --format $argv;
end
