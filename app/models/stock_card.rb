class StockCard < ActiveRecord::Base
  validates_uniqueness_of :name
  has_and_belongs_to_many :offers, :uniq => true
  has_many :assignments
  has_many :sections, :through => :assignments
  
  IMAGE_FOLDER = 'app/assets/images/'
  
  def save_with_image(s)
    zango_url = "http://zango.vuitton.lvmh/website/media/prod_image/" + s + "/S000" + s + "00N0.jpg"
    filename = s + '.jpg'
    
    local_image_path = IMAGE_FOLDER + filename
    
    open(local_image_path, 'wb') do |file|
      begin
        file << open(zango_url).read
      rescue
        next
      end
    end
    self.photo = filename
    self.save
  end
  
  def local_image_exists?
    File.exist?(IMAGE_FOLDER+self.photo)
  end
  
  def offers_as_string
    s = ""
    self.offers.each do |offer|
      s += offer.name.gsub(/[ ]/,'_') + ' '
    end
    s
  end
  
  def as_json(options={})
    {"id" => id, "name" => sku+" - "+name}
  end
end
