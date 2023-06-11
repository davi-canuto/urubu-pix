require 'spec_helper'
require './app/usecases/users/create'
require './app/model/user'

RSpec.describe Users::Create do
  context 'with new user' do
    let(:params) { { name: 'John' } }
    let(:create_user) { Users::Create.new(params: params) }

    it { expect(create_user.call.class).to be(UserRepository) }
  end
end