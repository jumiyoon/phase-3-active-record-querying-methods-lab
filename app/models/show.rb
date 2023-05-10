class Show < ActiveRecord::Base
# /*

# .highest_rating: This method should return the highest value in the ratings column. Hint: if there is a .minimum Active Record method, might there be a .maximum method?

# .most_popular_show: Returns the show with the highest rating.

# .lowest_rating: Returns the lowest value in the ratings column.

# .least_popular_show: Returns the show with the lowest rating.

# .ratings_sum: Returns the sum of all of the ratings.

# .popular_shows: Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.

# .shows_by_alphabetical_order: Returns an array of all of the shows sorted in alphabetical order according to their names. Hint: use the .order Active Record method.

# */ 


    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        Show.where(rating: self.maximum(:rating))[0]
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.where(rating: self.lowest_rating)[0]
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end