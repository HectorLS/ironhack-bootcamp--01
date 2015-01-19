#encoding: utf-8
require_relative '105_imdb.rb'


describe Reader do
  before do
    @the_reader = Reader.new("movies.txt")
  end

  describe "#best_rated" do
    it "Should return the best rated Movie" do
      best_rated = @the_reader.best_rated
      expect(best_rated).to eq("The Godfather")
    end
  end

  describe "#top_list" do
    it "Should return the best rated movie" do
      top_rated = @the_reader.top_list(7)
      expect(top_list).to eq(
        ["The Godfather", "Star trek, the new generation", "Die Hard", "The night of the living dead", "Ghostbusters", "Titanic", "Home alone"])
    end
  end

end