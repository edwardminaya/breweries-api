require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "breweries_us.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  brew = Brewery.new
  brew.brewery_name = row["brewery_name"]
  brew.type = row["type"]
  brew.address = row["address"]
  brew.website = row["website"]
  brew.state = row["state"]
  brew.state_breweries = row["state_breweries"]
  brew.save
  puts "#{brew.brewery_name} saved"
end
