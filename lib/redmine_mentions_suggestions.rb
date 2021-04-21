Rails.configuration.to_prepare do

  IssuesController.send :helper, IssuesControllerHelper
  require_dependency 'redmine_mentions_suggestions/hooks'
end

require_dependency 'redmine_mentions_suggestions/patches/user_preference_patch'
ActiveSupport::Reloader.to_prepare do
  unless UserPreference.included_modules.include?(RedmineMentionsSuggestions::Patches::UserPreferencePatch)
    UserPreference.send :prepend, RedmineMentionsSuggestions::Patches::UserPreferencePatch
  end
end
