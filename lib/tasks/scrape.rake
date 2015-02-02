desc "scrapes the ffxiv lodestone for all duties"
task scrape: [:environment] do
  [1,2].each do |page|
    r = RestClient.get "http://na.finalfantasyxiv.com/lodestone/playguide/db/duty/?page=#{page}"
    doc = Nokogiri::HTML(r)
    doc.css('#eorzea_db .db_cnts tbody tr').each do |row|
      category = row.css('.col_left > span a').first.text
      link = row.css('.col_left > a').first
      name = link.text
      href = link.attributes['href'].value
      min_level = row.css('.col_center').text
      min_item_level = row.css('.col_right').text.to_i
      Duty.new(
        category: category,
        name: name,
        href: href,
        min_level: min_level,
        min_item_level: min_item_level
      ).save
      puts [category, name, href, min_level, min_item_level].join(', ')
    end
  end
end

# t.string :category
# t.string :name
# t.string :href
# t.integer :min_level
# t.integer :min_item_level
# t.integer :sync_level
# t.integer :time_limit
# t.integer :party_size
# t.integer :alliance_size
