describe "As a user" do
  context "When I visit the comedians path" do
    it "I can see all comedians names and ages" do
      Comedian.create(name: "Zac Palmquist", age: 26) # could never get past this point gang...guess I won't be testing.
      Comedian.create(name: "Amber Irish", age: 30) # would love to chat about enviro setup and what I was doing wrong. Setup is exactly
                                                    # like Little Shop and I have no idea what else to try. See my spec helper and let me know if theres something missing.

      visit '/comedians'

      expect(page).to have_content("Zac Palmquist")
      expect(page).to have_content(26)
    end
  end
end
