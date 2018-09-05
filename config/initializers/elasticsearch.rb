if Rails.env == 'production'
  url = "https://sxn7d7ni9m:7dr7ldjewi@holly-6981163.us-east-1.bonsaisearch.net"
  transport_options = { request: { timeout: 250 } }
  options = { hosts: url, retry_on_failure: true, transport_options: transport_options }
  Elasticsearch::Client.new(options)
end