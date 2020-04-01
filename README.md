# Checkout Kata

Implement the code for a supermarket checkout that calculates the total price of a number of items. In a normal supermarket, things are identified using Stock Keeping Units, or SKUs. In our store, we’ll use individual letters of the alphabet (A, B, C, and so on). Our goods are priced individually. In addition, some items are multi-priced: buy n of them, and they’ll cost you y pence. For example, item A might cost 50 individually, but this week we have a special offer: buy three As and they’ll cost you 130. In fact the prices are:
SKU     UnitPrice   SpecialPrice
A           50              3 for 130
B           30              2 for 45
C           20    
D           15    

The checkout accepts items in any order, so that if we scan a B, an A, and another B, we’ll recognize the two Bs and price them at 45 (for a total price so far of 95).

## Product Requirements Identified:

 -   Calculate total price for multiple items
 -   Ability to identify item for SKU
  -  Ability to apply multibuy/combination discounts
  -  Order of items should not matter
   - Unit conversion? Is there a requirement for £XY.ZZ
