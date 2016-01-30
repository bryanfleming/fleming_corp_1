class GaReport
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :date, type: Date
  #field :email
	field :client_name, type: String
	#field :client_id
	field :report_name, type: String
  field :userType, type: String
  field :campaign, type: String
  field :sourceMedium, type: String
  field :deviceCategory, type: String
  field :pagePath
  field :channelGrouping, type: String
  field :users, type: Integer
  field :sessions, type: Integer
  field :bounces, type: Integer
  field :sessionDuration, type: Integer
  field :entrances, type: Integer
  field :pageviews, type: Integer
  field :exits, type: Integer

end
