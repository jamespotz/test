class Ycombinator
  require 'open-uri'
  require 'json'
  require 'yaml'
  require 'openssl'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def fetch
    value = JSON.parse(open("https://hn.algolia.com/api/v1/search?query=ruby/rails&tags=story").read)['hits'].map { |h| h['title'] }
    File.open('test.yml', 'w') {|f| f.write value.to_yaml } #Store
    puts "\n Done check the test.yml"
  end
end

print "Searching for anything related to Ruby"
Ycombinator.new().fetch
