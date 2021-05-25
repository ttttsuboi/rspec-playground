# https://relishapp.com/rspec/rspec-core/v/3-10/docs/example-groups/basic-structure-describe-it

RSpec.describe "something" do
  context "in one context" do
    it "does one thing" do
    end
  end

  context "in another context" do
    it "does another thing" do
    end
  end
end

# it results
# ```
# something
#   in one context
#     does one thing
#   in another context
#     does another thing
# ```
