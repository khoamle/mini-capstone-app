Order.create!([
  {quantity: 2, product_id: 7, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 2, product_id: 4, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 4, product_id: 4, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 3, product_id: 4, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 4, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 3, product_id: 6, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 2, product_id: 3, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 2, product_id: 3, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 3, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 3, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 2, product_id: 2, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 2, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 7, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: 7, user_id: nil, tax: nil, subtotal: nil, total: nil},
  {quantity: 1, product_id: nil, user_id: 1, tax: "0.09", subtotal: "23.9", total: "23.99"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "0.09", subtotal: "23.9", total: "23.99"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "0.09", subtotal: "18.78", total: "18.87"},
  {quantity: 2, product_id: nil, user_id: 1, tax: "0.09", subtotal: "47.8", total: "47.89"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "0.09", subtotal: "35.87", total: "39.1"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "1.69", subtotal: "18.78", total: "50.52"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "1.69", subtotal: "18.78", total: "20.47"},
  {quantity: 1, product_id: nil, user_id: 1, tax: "3.23", subtotal: "35.87", total: "39.1"},
  {quantity: 2, product_id: nil, user_id: 1, tax: "6.46", subtotal: "71.74", total: "78.2"}
])
Product.create!([
  {name: "iPhone", price: "18.78", description: "1st generation iPhone", stock: nil, supplier_id: 3},
  {name: "iPhone 3g", price: "23.9", description: "2nd generation iPhone", stock: nil, supplier_id: 2},
  {name: "iPhone 3gs", price: "35.87", description: "3rd generation iPhone", stock: nil, supplier_id: 1},
  {name: "iPhone 4", price: "57.9", description: "4th generation iPhone", stock: nil, supplier_id: 1},
  {name: "iPhone 4s", price: "64.99", description: "5th generation iPhone", stock: nil, supplier_id: 2},
  {name: "iPhone 5", price: "186.82", description: "6th generation iPhone", stock: nil, supplier_id: 3},
  {name: "iPhone 5s", price: "302.81", description: "7th generation iPhone", stock: nil, supplier_id: 1},
  {name: "iPhone 6", price: "599.45", description: "8th generation iPhone", stock: nil, supplier_id: 2},
  {name: "iPhone 6 Plus", price: "650.78", description: "9th generation iPhone", stock: nil, supplier_id: 3},
  {name: "Samsung Galaxy s6", price: "729.82", description: "Samsung phone", stock: nil, supplier_id: 1}
])
ProductImage.create!([
  {image_url: "http://s.tmocache.com/content/dam/tmo/en-p/cell-phones/apple-iphone-6-plus/all/stills/spec-apple-iphone-6-plus-all.jpg", product_id: 10},
  {image_url: "http://s.tmocache.com/content/dam/tmo/en-p/cell-phones/apple-iphone-6-plus/space-gray/stills/carousel-apple-iphone-6-plus-space-gray-380x380-2.jpg", product_id: 10},
  {image_url: "http://www.fone3.com/wp-content/uploads/2011/04/Apple-iPhone-2G.jpg", product_id: 2},
  {image_url: "https://stuffgear.files.wordpress.com/2010/08/img_1870.jpg", product_id: 2},
  {image_url: "http://www.ninjaelectronics.com/wp-content/uploads/2015/01/iphone3G.jpg", product_id: 3},
  {image_url: "http://www.imaculado.net/wp-content/uploads/classipress/1318256353-1.png", product_id: 3},
  {image_url: "http://www.gadgetlite.com/wp-content/uploads/2009/06/iphone-3gs-wwdc-2009-keynote-1566-rm-eng.jpg", product_id: 4},
  {image_url: "http://www.blogcdn.com/www.tuaw.com/media/2012/05/iphone3gsredux.jpg", product_id: 4},
  {image_url: "http://images.anandtech.com/reviews/gadgets/apple/VZWiPhone4/CDMAiPhone4-3593.jpg", product_id: 5},
  {image_url: "http://www.geeky-gadgets.com/wp-content/uploads/2010/07/iphone-4-review_2.jpg", product_id: 5},
  {image_url: "http://drop.ndtv.com/TECH/product_database/images/530201374810PM_635_iPhone_4s.png", product_id: 6},
  {image_url: "https://d3nevzfk7ii3be.cloudfront.net/igi/DmHXUNUgaUZ1tyXb.medium", product_id: 6},
  {image_url: "http://iphone-mend.com/wp-content/uploads/2014/05/iphone-5-repair.jpg", product_id: 7},
  {image_url: "http://cdn.gottabemobile.com/wp-content/uploads/2014/03/iphone-5-black-vs-white-4-575x431.jpg", product_id: 7},
  {image_url: "http://s.tmocache.com/content/dam/tmo/en-p/cell-phones/apple-iphone-5s/all/stills/specs-apple-iphone-5s-all-380x380.jpg", product_id: 8},
  {image_url: "http://cnet3.cbsistatic.com/hub/i/r/2013/09/12/ffddb58f-84ca-11e3-beb9-14feb5ca9861/resize/620x/130216604cb44544b61c546d797b0ae0/Septimius_Cronus03.jpg", product_id: 8},
  {image_url: "http://cdn2.tekrevue.com/wp-content/uploads/2014/09/iphone6plus-reachability-home.jpg", product_id: 9},
  {image_url: "http://cdn.bgr.com/2014/09/bgr-iphone-6-6.jpg?w=624", product_id: 9},
  {image_url: "http://www.profi-repair.de/tl_files/profirepair/reparatur/modell-iphone-2g.jpg", product_id: 11},
  {image_url: "https://stuffgear.files.wordpress.com/2010/08/img_1870.jpg", product_id: 11},
  {image_url: "http://www.fone3.com/wp-content/uploads/2011/04/Apple-iPhone-2G.jpg", product_id: 12},
  {image_url: "http://www.fone3.com/wp-content/uploads/2011/04/Apple-iPhone-2G.jpg", product_id: 12},
  {image_url: "http://www.fone3.com/wp-content/uploads/2011/04/Apple-iPhone-2G.jpg", product_id: 13},
  {image_url: "http://www.fone3.com/wp-content/uploads/2011/04/Apple-iPhone-2G.jpg", product_id: 13},
  {image_url: "http://cdni.wired.co.uk/1240x826/s_v/s6-1.jpg", product_id: 13},
  {image_url: "http://cdni.wired.co.uk/1240x826/s_v/s6-1.jpg", product_id: 13},
  {image_url: "http://cdni.wired.co.uk/1240x826/s_v/s6-1.jpg", product_id: 14},
  {image_url: "http://cdni.wired.co.uk/1240x826/s_v/s6-1.jpg", product_id: 14},
  {image_url: "http://stylonica.com/wp-content/uploads/2014/02/Free-Wallpaper-Nature-Scenes.jpg", product_id: 14},
  {image_url: "http://stylonica.com/wp-content/uploads/2014/02/Free-Wallpaper-Nature-Scenes.jpg", product_id: 14},
  {image_url: "http://stylonica.com/wp-content/uploads/2014/02/Free-Wallpaper-Nature-Scenes.jpg", product_id: 15},
  {image_url: "http://stylonica.com/wp-content/uploads/2014/02/Free-Wallpaper-Nature-Scenes.jpg", product_id: 15}
])
Supplier.create!([
  {name: "Apple", email: "supply@apple.com", phone: "888-982-9823"},
  {name: "Foxconn", email: "info@foxconn.com", phone: "827-827-7112"},
  {name: "Sony", email: "info@sony.com", phone: "628-282-6282"}
])
