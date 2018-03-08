require 'rails_helper'

describe Verification::Residence do

  let(:residence) { build(:verification_residence, document_number: "12345678Z") }

  describe "verification" do

    describe "postal code" do
      it "is valid with Swedish postal codes" do
        residence.postal_code = "16344"
        residence.valid?
        expect(residence.errors[:postal_code].size).to eq(0)

        residence.postal_code = "11150"
        residence.valid?
        expect(residence.errors[:postal_code].size).to eq(0)
      end

      it "is not valid with incorrect Swedish postal codes" do
        residence.postal_code = "123456"
        residence.valid?
        expect(residence.errors[:postal_code].size).to eq(2)

        residence.postal_code = "11"
        residence.valid?
        expect(residence.errors[:postal_code].size).to eq(2)
        expect(residence.errors[:postal_code]).to include("In order to be verified, you must be registered.")
      end
    end

  end

end
