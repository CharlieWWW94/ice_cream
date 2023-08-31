# frozen_string_literal: true

RSpec.describe IceCream::Actions::Menus::Update do
  let(:params) { Hash[] }

  it "works" do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
