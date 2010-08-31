require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

context ScaffolderValidate do

  context "calling the errors method" do
    before(:all) do
      @valid   = stub(:valid? => true)
      @invalid = stub(:valid? => false)
    end

    it "should return an empty array when scaffold is valid" do
      ScaffolderValidate.new([@valid,@valid]).errors.empty?.should be_true
    end

    it "should return invalid entries when scaffold is invalid" do
      ScaffolderValidate.new([@invalid,@valid]).errors.should == [@invalid]
    end
  end

end
