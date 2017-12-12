isRead = ARGV.length > 0 and ARGV[0] == 'READ'

ARGV.clear

class User
    @name = ""
    @age = 0
    @height = 0
    @weight = 0

    def readInput(prompt)
        print prompt
        return gets.chomp
    end

    def display()
        puts ''
        puts 'User Information:'
        puts 'User Name  : ' + @name
        puts 'User Age   : ' + String(@age)
        puts 'User Height: ' + String(@height)
        puts 'User Weight: ' + String(@weight)
    end

    def loadFromInput()
        @name = readInput('Enter User Name: ')
        @age = Integer(readInput('Enter Age: '))
        @height = String(readInput('Enter Height (in feet and inches with foot and inch marks): '))
        @weight = Integer(readInput('Enter Weight: '))
    end

    def save()
        f = File.new('user.info','w')
        f.puts(@name)
        f.puts(String(@age))
        f.puts(String(@height))
        f.puts(String(@weight))
        f.close()
    end

    def loadFromFile()
        f = File.new('user.info', 'r')
        @name = f.readline
        @age = Integer(f.readline)
        @height = String(f.readline)
        @weight = Integer(f.readline)
    end
end

theUser = nil

if isRead
    theUser = User.new()
    theUser.loadFromFile()
else
    theUser = User.new()
    theUser.loadFromInput()
    theUser.save()
end

theUser.display()
