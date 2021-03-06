require 'rails_helper'

describe Party, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:date)}
    it {should validate_presence_of(:zip_code)}
  end

  describe 'relationships' do
    it { should belong_to(:host) }
    it { should have_many(:user_parties) }
    it { should have_many(:users) }
  end

  describe 'instance methods' do
    it '#location' do
      VCR.use_cassette("create standard party") do
        @p = create(:party)
      end

      expect(@p.location).to eq(
        "#{@p.street_address}, #{@p.city}, #{@p.state} #{@p.zip_code}")
    end

    context '#attendance' do
      it 'should set or delete user relationship to party' do
        VCR.use_cassette("create standard party") do
          @party = create(:party)
        end
        user = create(:user)

        expect(@party.users.first).to be(nil)

        @party.attendance(user, "attend")

        expect(@party.users.first).to eq(user)

        @party.attendance(user, "cancel")

        expect(@party.users.first).to be(nil)
      end
    end
  end
end
