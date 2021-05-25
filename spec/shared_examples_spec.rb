# https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# include_examples: include the examples in the current context

class SomeClass; end

RSpec.shared_examples "some example" do |parameter|
  let(:something) { parameter }

  it "uses the given parameter" do
    expect(something).to eq(parameter)
  end
end

RSpec.describe SomeClass do
  include_examples "some example", "parameter1" # This test fails
  include_examples "some example", "parameter2"
end

# Test result here
# ```
# SomeClass
#   uses the given parameter (FAILED - 1)
#   uses the given parameter
# ```

# This is same followings

RSpec.describe SomeClass do
  let(:something) { "parameter1" }
  let(:something) { "parameter2" }

  it "uses the given parameter" do
    expect(something).to eq("parameter1")
  end

  it "uses the given parameter" do
    expect(something).to eq("parameter2")
  end
end

# You can pass as follows

RSpec.describe SomeClass do
  it_behaves_like "some example", "parameter1"
  include_examples "some example", "parameter2"
end

# ```
# SomeClass
#   uses the given parameter
#   behaves like some example
#     uses the given parameter
# ```
