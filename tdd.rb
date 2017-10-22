# Testing using rspec. Enter 'rspec tdd.rb --format documentation'

class StringChanger
  def reverse_and_save(string_to_reverse)
    string_to_reverse.reverse.tap do |reversed_string|
      File.write('example_file', reversed_string)
    end
  end
end

# The testing code: 
describe StringChanger do
  it 'reverses strings' do
    string_changer = StringChanger.new

    reversed_string = string_changer.reverse_and_save('example string')

    expect(reversed_string).to eq 'gnirts elpmaxe'
  end


  it 'saves string to the file system' do
    string_changer = StringChanger.new
    File.stub(:write)

    string_changer.reverse_and_save('example string')

    expect(File).
      to have_received(:write).
      with('example_file', 'gnirts elpmaxe').
      once
  end
end
