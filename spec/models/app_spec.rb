require 'spec_helper'

describe App do
  it 'has fields title, description, status, ' do
    %w(title description status).each do |attribute|
      expect(App.attribute_names.include?(attribute)).to be true
    end
  end

  it "fails validation with no title" do
    expect(App.new).to have(1).errors_on(:title)
  end

  it "fails validation with no status" do
    expect(App.new).to have(1).errors_on(:status)
  end


end
