stephen = User.create(first_name: "Stephen", last_name: "Fiser", email: "stephen.fiser@gmail.com", password: "Dr3amcenter", password_confirmation: "Dr3amcenter")
white_house = Property.create(
		property_type: "House",
		title: "White House",
		description: "The president lives here.",
		bedrooms: '6',
		bathrooms: '8',
		square_feet: '5000',
		price: "1000000",
		status: "For Sale",
		year_constructed: "1800",
		days_since_listed: "56",
		details: ["Swimming Pool", "Big Backyard", "Pet Friendly", "Charming"]
	)
loft = Property.create(
		property_type: "Apartment",
		title: "New York Loft",
		description: "Great view. Costs a fortune.",
		bedrooms: '3',
		bathrooms: '2',
		square_feet: '5000',
		price: "10000000",
		status: "For Sale",
		year_constructed: "2010",
		days_since_listed: "56",
		details: ["Downtown", "Recently Built", "Open Floor Plan"]
	)
stephen.properties << white_house
stephen.properties << loft