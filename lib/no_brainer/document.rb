require 'active_model'

module NoBrainer::Document
  extend ActiveSupport::Concern
  extend NoBrainer::Autoload

  autoload_and_include :Core, :StoreIn, :InjectionLayer, :Attributes, :Validation, :Types,
                       :Persistance, :Dirty, :Id, :Association, :Serialization, :Criteria,
                       :Polymorphic, :Index, :Timestamps

  autoload :DynamicAttributes

  singleton_class.delegate :all, :to => Core
end
