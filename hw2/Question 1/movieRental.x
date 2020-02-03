-- Create objects
!create customer: Customer
!create movie1: Movie
!create movie2: Movie
!create rent1: Rental
!create rent2: Rental

-- Set movie attributes and relations
!set movie1.title := 'Legend of Mountain'
!set movie1.priceCode := PriceCode::family
!insert(rent1, movie1) into movRental

!set movie2.title := 'Awesome Sauce'
!set movie2.priceCode := PriceCode::regular
!insert(rent2, movie2) into movRental

-- Set rental attributes and relations
!set rent1.daysRented := 9
!set rent2.daysRented := 7

-- Set customer attributes and relations
!insert (customer, rent1) into custRentals
!insert (customer, rent2) into custRentals

!set customer.name := 'Bob'
!set customer.numRen := 2

-- Call Statement() on customer
!customer.Statement()

-- Check system status
check -v -d -a