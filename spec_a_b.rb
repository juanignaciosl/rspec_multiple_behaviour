require_relative 'module_a_b'

include A::B

describe MyClass do

  it "It loads B class if includes A::B" do
    MyClass.new.greet.should_not match /^Hi/
    MyClass.new.greet.should match /^F/
  end

end
