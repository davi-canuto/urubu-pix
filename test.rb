# frozen_string_literal: true

require './app'
require './app/adapters/repositories/user_repository'

UserRepository.create(name: 'davizin')
