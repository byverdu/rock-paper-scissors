require 'player'

describe Player do 
	let(:player) {Player.new("Stephen")}
	it "has a name" do
		expect(player.name).to eq"Stephen"
	end

	it "can make a pick" do 
		player.picks = "Rock"
		expect(player.pick).to eq("Rock")
	end




end
