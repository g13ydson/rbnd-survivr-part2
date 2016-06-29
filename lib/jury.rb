class Jury
  attr_accessor :members

  def initialize
	@members = []
  end

  def add_member(member)
	@members << member
  end

  def cast_votes(finalists)
	finalists_votes = Hash.new

    finalists.each do |finalist|
      finalists_votes[finalist] = 0
	end

	@members.each do |member|
      random_finalist = finalists_votes.keys.sample
      puts "#{member.to_s.capitalize} cast their vote for #{random_finalist.to_s.capitalize}."
      finalists_votes[random_finalist] += 1
    end

	return finalists_votes
  end

  def report_votes(votes)
    votes.each do |finalist, votes|
      puts "#{finalist.to_s.capitalize} received #{votes} votes."
    end
  end

  def announce_winner(votes)
    winner = votes.max_by { |k, v| v }.flatten[0]
    puts
    puts "The winner is #{winner.to_s.capitalize}!"
    return winner
  end

end