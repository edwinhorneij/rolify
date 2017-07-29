class <%= join_table.camelize %> < ActiveRecord::Base
  self.primary_key = nil
  belongs_to :<%= user_class.table_name %>
  belongs_to :<%= table_name %>
end
