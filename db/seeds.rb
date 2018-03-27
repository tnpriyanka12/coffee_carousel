User.destroy_all

u1 = User.create name: "user1", email:"user1@mail.com", description:"Likes Coffee!" , password: "chicken"
u2 = User.create name: "user2", email:"user2@mail.com", description:"Adores Coffee!!" , password: "chicken"
u3 = User.create name: "user3", email:"user3@mail.com", description:"Loves Coffee!!!!" , password: "chicken"
u4 = User.create name: "user4", email:"user4@mail.com", description:"Lives for Coffee!!!!!!" , password: "chicken"

d1 = Drink.create name: "Espresso" ,milk:"1" ,espresso:"3" ,froth:"0" ,description:"A concentrated drink produced by forcing hot water through finely ground coffee with an espresso machine for a filled quantity of approximately 1 to 1-1/2 oz. A perfect espresso is deliciously smooth, with full body, intense aroma and a velvety crema. Best served in a pre-heated espresso cup."

d2 = Drink.create name: "Cappuccino" ,milk:"1" ,espresso:"2" ,froth:"2" ,description:"Made in thirds — 1/3 espresso, 1/3 steamed milk, 1/3 foam. This is a very traditional way of making cappuccino. The milk should appear glassy, smooth, shiny and with no visible bubbles. The milk and foam should be blended or mixed to create a thick, creamy texture."

d3 = Drink.create name: "FlatWhite" ,milk:"6" ,espresso:"2" ,froth:"0.1" ,description:"This is what some call an “Australian latte”. Generally, it’s served in a 6 to 8 ounce cup and is meant to be enjoyed with the thinnest layer of foam possible. It is important to keep the ratio of milk to espresso appropriate so as not to overpower the espresso."


d4 = Drink.create name: "Late" ,milk:"5" ,espresso:"2" ,froth:"0.2" ,description:"A café latte, or “latte” for short, is an espresso based drink with steamed milk and micro-foam added to the coffee. This coffee is much sweeter compared to an espresso due to the steamed milk."

d5 = Drink.create name: "Macciato" ,milk:"0" ,espresso:"2" ,froth:"2" ,description:"Sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed. In Italian, macchiato means stained or spotted so the literal translation of cafè macchiato is -stained coffee-, or coffee with a spot of milk."

d6 = Drink.create name: "Chai" ,milk:"1" ,espresso:"1" ,froth:"0.1" ,description:"chai must have sweetness or the spices seem to lose their full robustness. The traditional ingredients of a spiced tea blend usually include black tea mixed with strong spices, like cinnamon, cardamom, cloves, ginger and black peppercorns."




u1.drinks << d1 << d2
u2.drinks << d3
u3.drinks << d6
u4.drinks << d4 << d5
