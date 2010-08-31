require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

context ScaffolderValidate do

  context "comparing inserts for overlaps using inserts_overlap?" do

    before(:all) do
      @insert = stub(:position => 5..10)
    end

    it "should be false when inserts don't overlap" do
      no_overlap = stub(:position => 11..12)
      ScaffolderValidate.inserts_overlap?(@insert,no_overlap).should be_false
      ScaffolderValidate.inserts_overlap?(no_overlap,@insert).should be_false
    end

    it "should be true when inserts do overlap" do
      overlap = stub(:position => 10..11)
      ScaffolderValidate.inserts_overlap?(@insert,overlap).should be_true
      ScaffolderValidate.inserts_overlap?(overlap,@insert).should be_true
    end

  end

  context "testing a sequence for insert overlaps using sequence_errors" do

    before(:all) do
      # User integers for mocks because they can be sorted
      @a = 1; @b = 2
      @sequence = stub(:inserts => [@a,@b])
    end

    it "should return an empty array when sequence has no errors" do
      ScaffolderValidate.stubs(:inserts_overlap?).with(@a,@b).returns(false)
      ScaffolderValidate.stubs(:inserts_overlap?).with(@b,@a).returns(false)
      ScaffolderValidate.sequence_errors(@sequence).empty?.should be_true
    end

    it "should return inserts when sequence inserts overlap" do
      ScaffolderValidate.stubs(:inserts_overlap?).with(@a,@b).returns(true)
      ScaffolderValidate.stubs(:inserts_overlap?).with(@b,@a).returns(true)
      ScaffolderValidate.sequence_errors(@sequence).should == [[@a,@b]].sort
    end

  end

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
