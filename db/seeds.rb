User.destroy_all

u1 = User.create name: "user1", email:"user1@mail.com", description:"Likes Coffee!" , password: "chicken"
u2 = User.create name: "user2", email:"user2@mail.com", description:"Adores Coffee!!" , password: "chicken"
u3 = User.create name: "user3", email:"user3@mail.com", description:"Loves Coffee!!!!" , password: "chicken"
u4 = User.create name: "user4", email:"user4@mail.com", description:"Lives for Coffee!!!!!!" , password: "chicken"
puts "Users - #{User.all.length} "

Drink.destroy_all
d1 = Drink.create name: "Espresso" ,milk:"0" ,espresso:"1" ,froth:"None" , picture: "assets/espresso-photo.jpg", description:"One shot of espresso prepared with 7 grams of ground coffee in a single portafilter. The shot should be 1 ounce of liquid. You have two choices with espresso: ristretto, a very short or “restrained” shot, brewed at less than 2/3 of a demitasse, or luongo, a long pull of espresso brewed so the liquid should be more than 2/3 of a demitasse."

d2 = Drink.create name: "Macchiato" ,milk:"1" ,espresso:"2" ,froth:"A touch" , picture: "assets/macchiato-photo.jpg", description:"Single espresso with a touch of foam. Macchiato means spotted or stained; the espresso is “stained” with foam. This can be made as a single or a double."

d3 = Drink.create name: "Cappucino" ,milk:"1" ,espresso:"1" ,froth:"same as milk" , picture: "assets/cappuccino-photo.jpg", description:"Made in thirds — 1/3 espresso, 1/3 steamed milk, 1/3 foam. This is a very traditional way of making cappuccino. The milk should appear glassy, smooth, shiny and with no visible bubbles. The milk and foam should be blended or mixed to create a thick, creamy texture. La Colombe pulls double ristretto shots."

d4 = Drink.create name: "Latte" ,milk:"2" ,espresso:"1" ,froth:"thin layer" , picture: "assets/latte-photo.jpg", description:"1/3 espresso, 2/3 hot milk, thin layer of foam. A cafe latte should have the same glossy finish as the cappuccino. This is pulled with a double ristretto."

d5 = Drink.create name: "Flat-White" ,milk:"2" ,espresso:"1" ,froth:"A touch" , picture: "assets/flat-white-photo.jpg", description:"This is what some call an “Australian latte”. Generally, it’s served in a 6- to 8-ounce cup and is meant to be enjoyed with the thinnest layer of foam possible. It is important to keep the ratio of milk to espresso appropriate so as not to overpower the espresso."

d6 = Drink.create name: "Iced-Coffee" ,milk:"0" ,espresso:"2" ,froth:"None" , picture: "assets/ice-coffee-photo.jpg", description:"A 16-ounce cup of ice with hot-drip coffee poured over it. A double shot of espresso tops it off."
puts "Drinks - #{Drink.all.length} "




u1.drinks << d1 << d2
u2.drinks << d3
u3.drinks << d6
u4.drinks << d4 << d5
