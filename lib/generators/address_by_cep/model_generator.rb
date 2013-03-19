module AddressByCep
  class ModelGenerator < Base
    include Rails::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)
    
    def initialize(*args, &block)
      super
    end

    def create_partial
      copy_file 'partial_addressable_form.html.erb', "app/views/addresses/_addressable_form.html.erb"
    end

    def add_js_in_application_js
      add_js_reference
    end
     
    def create_model
      template 'address_model.rb', "app/models/address.rb"
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end
    
    def create_migration
      migration_template 'migration.rb', "db/migrate/create_table_addresses.rb"
    end
       
  end
  module Rails
    require 'engine'
  end
end