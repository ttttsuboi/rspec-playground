# https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples

RSpec.shared_examples "a collection" do
  let(:collection) { described_class.new([7, 2, 4]) }

  context "initialized with 3 items" do
    it "says it has three items" do
      expect(collection.size).to eq(3)
    end
  end

  describe "#include?" do
    context "with an item that is in the collection" do
      it "returns true" do
        expect(collection.include?(7)).to be(true)
      end
    end

    context "with an item that is not in the collection" do
      it "returns false" do
        expect(collection.include?(9)).to be(false)
      end
    end
  end
end

RSpec.describe Array do
  it_behaves_like "a collection"
end

RSpec.describe Set do
  it_behaves_like "a collection"
end

# subject equals to Array.new
RSpec.describe Array do
  it "should be empty when first created" do
    expect(subject).to be_empty
  end

  describe Set do
    it "should be empty when first created" do
      # puts subject.inspect
      # -> <Set: {}>
      expect(subject).to be_empty
    end
  end
end
