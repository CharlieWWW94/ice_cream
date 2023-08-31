# frozen_string_literal: true

RSpec.describe IceCream::Actions::Shops::Create do
  let(:params) do
    Hash[
    street_number: '1',
    street: 'Test Street',
    city: 'Testville',
    country: 'Testoria',
    postcode: 'TE53SP3C'
  ]
  end

  let(:shops_repo) { IceCream::Repositories::Shops.new }

  it 'Returns redirect' do
    response = subject.call(params)
    expect(response.status).to eql(302)
    expect(response.location).to eql(Hanami.app['routes'].path(:shops))
  end

  it 'Creates a new shop' do
    expect { subject.call(params) }.to change { shops_repo.count }.by 1
  end
end
