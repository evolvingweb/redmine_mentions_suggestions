require 'redmine'

# Tell Zeitwerk to ignore this plugin's lib directory
plugin_lib = File.join(File.dirname(__FILE__), 'lib')
Rails.autoloaders.each { |loader| loader.ignore(plugin_lib) }

# Require plugin files
require File.join(plugin_lib, 'redmine_mentions_suggestions')

Redmine::Plugin.register :redmine_mentions_suggestions do
  name 'Redmine Mentions Suggestions plugin'
  author 'Evolving Web'
  description 'Suggest assignee based on note text.'
  version '6.0.0'
  url 'https://github.com/evolvingweb/redmine_mentions_suggestions'
  author_url 'https://evolvingweb.ca'
end
