# frozen_string_literal: true

module SnFoil
  module Rails
    if defined?(Rails)
      require 'sn_foil/rails/engine'
    else
      require 'sn_foil'
      require_relative '../searcher'
      require_relative '../jsonapi_serializer'
      require_relative '../jsonapi_deserializer'
      require_relative '../controller/concerns/change_controller_concern'
      require_relative '../controller/concerns/create_controller_concern'
      require_relative '../controller/concerns/destroy_controller_concern'
      require_relative '../controller/concerns/index_controller_concern'
      require_relative '../controller/concerns/setup_controller_concern'
      require_relative '../controller/concerns/show_controller_concern'
      require_relative '../controller/concerns/update_controller_concern'
      require_relative '../controller/api'
      require_relative '../controller/base'

      require_relative '../configuration/lazy_jsonapi_serializer'
    end
  end
end
