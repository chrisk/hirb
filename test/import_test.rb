require File.join(File.dirname(__FILE__), 'test_helper')

describe "import" do
  it "require import_object extends Object" do
    Object.ancestors.map {|e| e.to_s}.should.not.include "Hirb::ObjectMethods"
    require 'hirb/import_object'
    Object.ancestors.map {|e| e.to_s}.should.include "Hirb::ObjectMethods"
  end
end
