# Strings change everytime. In irb, you get a different id everytime.
"a string".object_id
"a string".object_id
"a string".object_id

# Symbols remain the same. Also in irb.
:a_symbol.object_id
:a_symbol.object_id
:a_symbol.object_id

# The result is the same id.
