# frozen_string_literal: true

# All other models inherit this
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
