Spree::Taxon.class_eval do
  has_attached_file :image, :styles => { :medium => "320x240!", :thumb => "100x100!" }
end
