module IssuesControllerHelper
  def map_users_to_states(users, issue)
    mapping = {}
    journals = Journal.where("journalized_type = 'issue' AND journalized_id = :id", {id: issue.id})
    journals.each do |journal|
      details = JournalDetail.where("journal_id = :id", {id: journal.id})
      assignee = nil
      status = nil
      details.each do |detail|
        if detail.prop_key == 'status_id'
          status = detail.value
        end
        if detail.prop_key == 'assigned_to_id'
          assignee = detail.value
        end
      end
      if assignee && status
        if !mapping.key?(assignee)
          mapping[assignee] = []
        end
        mapping[assignee].push(status)
      end
    end
    mapping
  end

  def status_listing
    issues = IssueStatus.order("position")
    listing = {}
    issues.each do |issue|
      listing[issue.id] = issue.name
    end
    listing
  end

end