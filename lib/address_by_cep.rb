require 'rails/generators/base'
require 'address_by_cep/version'

module AddressByCep
  class Base < Rails::Generators::Base
 
    def self.banner
      "rails generate address_by_cep:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
    end

    private

      def add_js_reference
        insert_into_file "app/assets/javascripts/application.js", "//= require addresses\n", :after => "jquery_ujs\n"
      end

      def print_usage
        self.class.help(Thor::Base.shell.new)
        exit
      end

      def destination_path(path)
        File.join(destination_root, path)
      end

  end

  module Rails
    require "address_by_cep/engine"
  end

end