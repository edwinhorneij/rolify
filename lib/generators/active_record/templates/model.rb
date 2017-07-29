has_many :<%= join_table %>, class_name: ':<%= join_table.camelize %>'
has_many :<%= user_class.table_name %>, through: :<%= join_table %>


<% if Rails::VERSION::MAJOR < 5 %>
belongs_to :resource,
           :polymorphic => true
<% else %>
belongs_to :resource,
           :polymorphic => true,
           :optional => true
<% end %>

validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

scopify
