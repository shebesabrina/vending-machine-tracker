require 'rails_helper'
# As a user
# When I visit a specific vending machine page
# I also see an average price for all of the snacks in that machine

describe 'Visitor show page' do
  it 'should also display average price of all the snacks' do
      owner = Owner.create(name: 'Bob')
      machine = owner.machines.create(location: 'Candy Shop')
      snack_1 = Snack.create(name: 'chips', price: 1.00)
      snack_2 = Snack.create(name: 'pretzel', price: 2.00)
      snack_3 = Snack.create(name: 'm&m', price: 1.00)

      visit machine_path(machine)

      expect(page).to have_content('Average price: $1.33')
  end
end
