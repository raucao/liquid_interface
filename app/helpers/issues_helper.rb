module IssuesHelper

  def link_to_issues(state)
    link_to state, issues_url(:state => state), :class => (params[:state] == state ? "current" : "")
  end

end