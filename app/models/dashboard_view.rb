class DashboardView < ActiveRecord::Base

  # Assuming we have dashboard view in Db
  # Using gem Scenic for getting data from db views : https://github.com/thoughtbot/scenic
  #include DashboardUser
  self.table_name = "dashboards"

  def self.cases_and_assets_filters
    return '{"assets":{"total":"180","filtersList":[{"id":"1","name":"HIGHSEVERITY","count":"10","priority":"1"},{"id":"2","name":"PMOVERDUE","count":"20","priority":"1"},{"id":"3","name":"PMDUE","count":"10","priority":"2"},{"id":"4","name":"CURRENT","count":"80","priority":"3"}]},"cases":{"total":"35","filtersList":[{"id":"5","name":"DOWNTIME>2DAYS","count":"5","priority":"1"},{"id":"6","name":"PASTDUEFOLLOWUP","count":"2","priority":"1"},{"id":"7","name":"PASTDUEETR","count":"5","priority":"1"},{"id":"8","name":"OPENSERVICEREQUEST","count":"2","priority":"2"},{"id":"9","name":"WAITINGAPPROVAL","count":"4","priority":"2"},{"id":"10","name":"CURRENT","count":"10","priority":"3"}]}}'
  end

end
