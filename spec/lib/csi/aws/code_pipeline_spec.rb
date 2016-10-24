require 'spec_helper'

describe CSI::AWS::CodePipeline do
  it "should display information for authors" do
    authors_response = CSI::AWS::CodePipeline
    expect(authors_response).to respond_to :authors
  end

  it "should display information for existing help method" do
    help_response = CSI::AWS::CodePipeline
    expect(help_response).to respond_to :help
  end
end
