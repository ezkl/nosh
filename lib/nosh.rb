require 'typhoeus'
require 'nokogiri'
require 'singleton'

require_relative 'nosh/version'

module Nosh
  module ObjectExtensions
    def nosh(url, options = {})
      parse = options[:parse] || false
      
      if (response = ::Typhoeus::Request.get(url)).success?
        parse ? ::Nokogiri.parse(response.body) : response.body
      else
        puts "[#{response.code}]: \"#{response.status_message}\""
        nil
      end
    end
  end
end

::Object.send(:include, ::Nosh::ObjectExtensions) unless ::Object.method_defined?(:nosh)