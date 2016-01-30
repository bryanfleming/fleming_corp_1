json.array!(@ga_reports) do |ga_report|
  json.extract! ga_report, :date, :client_name, :userType, :campaign, :sourceMedium, :deviceCategory, :pagePath, :channelGrouping, :users, :sessions, :bounces, :sessionDuration, :entrances, :pageviews, :exits
  json.url ga_report_url(ga_report, format: :json)
end
