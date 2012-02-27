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

b1 = br.children.create(name: "AC Delco")
b2 = br.children.create(name: "Motocraft")
b3 = br.children.create(name: "Mopar")

sparkplug = Spree::Product.create(name: "Rapid Fire Plug", description: "Spark Plug made by ACDelco", available_on: 3.days.ago, price: "4.23", permalink: "spark-plug")
s = sparkplug.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "sparkplug.jpg")))
sparkplug.taxons.push([t1])
sparkplug.taxons.push([b1])

fan_clutch = Spree::Product.create(name: "Fan Clutch", description: "Fan Clutch", available_on: 3.days.ago, price: "4.23", permalink: "fan-clutch")
fc = fan_clutch.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "fan_clutch.jpg")))
fan_clutch.taxons.push([t1])
fan_clutch.taxons.push([b2])

pulley = Spree::Product.create(name: "Idler Pulley", description: "Pulley for a car", available_on: 3.days.ago, price: "14.44", permalink: "idler-pulley")
p = pulley.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "pulley.jpg")))
pulley.taxons.push([t2])
pulley.taxons.push([b3])

injector = Spree::Product.create(name: "Fuel Injector", description: "Fuel injector multi port", available_on: 3.days.ago, price: "45.34", permalink: "fuel-injector")
i = injector.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "injector.jpg")))
injector.taxons.push([t3])
injector.taxons.push([b1])

shift_cable = Spree::Product.create(name: "Shift Cable", description: "Shift selector cable, 4spd", available_on: 3.days.ago, price: "54.34", permalink: "shift-cable")
s = shift_cable.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "shift_cable.jpg")))
shift_cable.taxons.push([t4])
shift_cable.taxons.push([b2])

brake_pads = Spree::Product.create(name: "Brake Pads", description: "Front brake pads", available_on: 3.days.ago, price: "54.34", permalink: "brake-pads")
b = brake_pads.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "brake_pads.jpg")))
brake_pads.taxons.push([t5])
brake_pads.taxons.push([b3])

steering_pump = Spree::Product.create(name: "Steering Pump", description: "Power steering pump", available_on: 3.days.ago, price: "54.34", permalink: "steering-pump")
st = steering_pump.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "steering_pump.jpg")))
steering_pump.taxons.push([t6])
steering_pump.taxons.push([b1])

exhaust = Spree::Product.create(name: "Exhaust Gasket", description: "Exhaust gasket", available_on: 3.days.ago, price: "4.34", permalink: "exhaust-gasket")
e = exhaust.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "exhaust_gasket.jpg")))
exhaust.taxons.push([t7])
exhaust.taxons.push([b2])

battery = Spree::Product.create(name: "Battery Cable", description: "Positive battery cable", available_on: 3.days.ago, price: "5.48", permalink: "battery-cable")
b = battery.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "battery_cable.jpg")))
battery.taxons.push([t8])
battery.taxons.push([b3])

ac = Spree::Product.create(name: "A/C Drier", description: "A/C drier accumulator", available_on: 3.days.ago, price: "15.48", permalink: "ac-drier")
acc = ac.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "ac_drier.jpg")))
ac.taxons.push([t9])
ac.taxons.push([b1])

oil = Spree::Product.create(name: "Oil Cooler", description: "Oil Cooler", available_on: 4.days.ago, price: "5.48", permalink: "oil-cooler")
o = oil.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "oil_cooler.jpg")))
oil.taxons.push([t10])
oil.taxons.push([b2])

wipers = Spree::Product.create(name: "Windshield Wipers", description: "Windshield wiper blades", available_on: 4.days.ago, price: "12.48", permalink: "wiper-blades")
w = wipers.images.create(attachment: File.open(File.join(Rails.root, "db", "seeds", "products", "wipers.jpg")))
wipers.taxons.push([t11])
wipers.taxons.push([b3])
