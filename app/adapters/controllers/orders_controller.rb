require './app/usecases/users/create'

class OrdesController
  def self.create(params)
    Orders::Create.new(params: params).call
  end
end