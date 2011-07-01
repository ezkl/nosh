require 'spec_helper'
require 'nosh'

describe Nosh do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
end
