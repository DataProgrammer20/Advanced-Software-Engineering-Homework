!create customer: Customer
!create movie1: Movie
!create movie2: Movie
!create rent1: Rental
!create rent2: Rental

!set movie1.title := 'Legend of Mountain'
!set movie1.priceCode := PriceCode::family
!insert(rent1, movie1) into movRental

!set movie2.title := 'Awesome Sauce'
!set movie2.priceCode := PriceCode::regular
!insert(rent2, movie2) into movRental

!set rent1.daysRented := 9
!set rent2.daysRented := 7

!insert (customer, rent1) into custRentals
!insert (customer, rent2) into custRentals

!set customer.name := 'Bob'
!set customer.numRen := 2

!customer.Statement()

check -v -d -a