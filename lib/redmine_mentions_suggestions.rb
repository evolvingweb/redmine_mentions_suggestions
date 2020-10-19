Rails.configuration.to_prepare do

  IssuesController.send :helper, IssuesControllerHelper
  require_dependency 'redmine_mentions_suggestions/hooks'
end
