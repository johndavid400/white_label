# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

slider1 = Spree::Slide.create(name: "Need Parts Fast?", body: "Place your order by 5:00 PM EST for Same Day Shipping.", published: true, image: File.open(File.join(Rails.root, "db", "seeds", "slider", "home_slider1.jpg")))

slider2 = Spree::Slide.create(name: "Coupon Codes Available", body: "Sign up below to receive coupon codes, news, and much more.", published: true, image: File.open(File.join(Rails.root, "db", "seeds", "slider", "home_slider2.jpg")))

slider3 = Spree::Slide.create(name: "Lowest Price Guarantee with Price Match", body: "A-P-T provides 30-day price protection.", published: true, image: File.open(File.join(Rails.root, "db", "seeds", "slider", "home_slider3.jpg")))

Spree::Taxonomy.create(name: "Categories")
Spree::Taxonomy.create(name: "Brands")

cat = Spree::Taxon.find_by_name("Categories")
br = Spree::Taxon.find_by_name("Brands")

t1 = cat.children.create(name: "Ignition and Engine Filters", image: File.open(File.join(Rails.root, "db", "seeds", "images", "ignition_engine_filters.jpg")))
t2 = cat.children.create(name: "Belts and Cooling", image: File.open(File.join(Rails.root, "db", "seeds", "images", "belts_cooling.jpg")))
t3 = cat.children.create(name: "Fuel and Emissions", image: File.open(File.join(Rails.root, "db", "seeds", "images", "fuel_emission.jpg")))
t4 = cat.children.create(name: "Drive Train", image: File.open(File.join(Rails.root, "db", "seeds", "images", "drive_train.jpg")))
t5 = cat.children.create(name: "Brakes and Wheel Bearings", image: File.open(File.join(Rails.root, "db", "seeds", "images", "brakes_wheel_bearings.jpg")))
t6 = cat.children.create(name: "Chassis and Steering", image: File.open(File.join(Rails.root, "db", "seeds", "images", "chassis_steering.jpg")))
t7 = cat.children.create(name: "Exhaust and Clutch", image: File.open(File.join(Rails.root, "db", "seeds", "images", "exhaust_clutch.jpg")))
t8 = cat.children.create(name: "Electrical", image: File.open(File.join(Rails.root, "db", "seeds", "images", "electrical.jpg")))
t9 = cat.children.create(name: "Heating and A/C", image: File.open(File.join(Rails.root, "db", "seeds", "images", "heating_air_conditioning.jpg")))
t10 = cat.children.create(name: "Engine", image: File.open(File.join(Rails.root, "db", "seeds", "images", "engine.jpg")))
t11 = cat.children.create(name: "Vision, Manuals, and Misc.", image: File.open(File.join(Rails.root, "db", "seeds", "images", "vision_manuals_misc.jpg")))

sparkplug = Spree::Product.create(name: "Rapid Fire Plug", description: "Spark Plug made by ACDelco", available_on: 3.days.ago, price: "4.23", permalink: "spark-plug")
s = sparkplug.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "sparkplug.jpg")))
sparkplug.taxons = [t1]

pulley = Spree::Product.create(name: "Idler Pulley", description: "Pulley for a car", available_on: 3.days.ago, price: "14.44", permalink: "idler-pulley")
pulley.taxons = [t2]
p = pulley.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "pulley.jpg")))

injector = Spree::Product.create(name: "Fuel Injector", description: "Fuel injector multi port", available_on: 3.days.ago, price: "45.34", permalink: "fuel-injector")
injector.taxons = [t3]
i = injector.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "injector.jpg")))

shift_cable = Spree::Product.create(name: "Shift Cable", description: "Shift selector cable, 4spd", available_on: 3.days.ago, price: "54.34", permalink: "shift-cable")
shift_cable.taxons = [t4]
s = shift_cable.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "shift_cable.jpg")))

brake_pads = Spree::Product.create(name: "Brake Pads", description: "Front brake pads", available_on: 3.days.ago, price: "54.34", permalink: "brake-pads")
brake_pads.taxons = [t5]
b = brake_pads.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "brake_pads.jpg")))

steering_pump = Spree::Product.create(name: "Steering Pump", description: "Power steering pump", available_on: 3.days.ago, price: "54.34", permalink: "steering-pump")
steering_pump.taxons = [t6]
st = steering_pump.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "steering_pump.jpg")))

