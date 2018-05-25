require 'rails_helper'
# As a user
# When I visit a specific vending machine page
# I see the name of all of the snacks associated with that vending machine along with their price

describe 'Visitor show page' do
  it 'should display the snacks and price' do
    owner = Owner.create(name: 'Bob')
    machine = machine.owners.create(location: 'candy shop')
    snack = Snack.create(name: 'chips', price: 1.00)

    visti owner_path

    expect(page).to have_content(snack.name)
    expect(page).to have_content(snack.price)
  end
end
