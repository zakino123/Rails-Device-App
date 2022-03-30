# frozen_string_literal: true

# ApplicationRecord定義
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
