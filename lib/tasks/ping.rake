desc "This task is called by the Heroku scheduler add-on"
task :call_page => :environment do
  uri = URI.parse('http://payments.mvarrieur.com/')
  Net::HTTP.get(uri)
end