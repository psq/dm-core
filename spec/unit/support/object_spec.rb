require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'spec_helper'))

describe Object do

  it "should be able to get a recursive constant" do
    Object.recursive_const_get('DataMapper::Resource').should == DataMapper::Resource
  end

  it "should not cache unresolvable class string" do
    lambda { Object.recursive_const_get('Foo::Bar::Baz') }.should raise_error(NameError)
    Object.instance_variable_get(:@nested_constants).has_key?('Foo::Bar::Baz').should == false
  end

end
