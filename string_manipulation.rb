strUsers = 'rpulley  ,    jsmith, svai,  jsatriani    ,ymalmsteen    '
arrUsers = strUsers.split(',')

for user in arrUsers
    trimUser = user.strip()
    trimUserR = user.rstrip()
    trimUserL = user.lstrip()

    firstInitial = trimUser[0,1]
    lastInitial = trimUser[1,1]
    lastName = trimUser[1..-1]

    puts 'User : \'' + user + '\''
    puts 'LTrim: \'' + trimUserL + '\''
    puts 'RTrim: \'' + trimUserR + '\''
    puts ' Trim: \'' + trimUser + '\''

    puts 'First Initial: ' + String(firstInitial)
    puts 'Last Initial: ' + lastInitial
    puts 'Last Name: ' + lastName

    puts ''
end