# Mod 1 Code Challenege Review

## `Steam Users -> Purchases <- Games`

For this code challenege review we will be building out a Steam Game Library domain! Our app will have 3 models. Steam Users, Video Games, and Purchases.

---

## Models & Relationships

---

### _SteamUser.rb_

- New SteamUsers should initialize with the following attributes:

  - `account_name`
  - `age`
  - `location`
  - `favorite_game_type`
  - `join_date` (Defaulted to `Time.now`)
  - Something else to keep track of each instance of this class as it is created...

- `SteamUsers` have many `Purchases`

- `SteamUsers` have many `VideoGames` through `Purchases`

- `account_name` & `join_date` should only have read access

### _Purchase.rb_

- New Purchases should initialize with the following attributes:

  - `amount`
  - `game`
  - `steam_user`
  - `purchase_date` (Defaulted to `Time.now`)
  - Something else to keep track of each instance of this class as it is created...

- `Purchases` belong to `SteamUsers`

- `Purchases` belong to `VideoGames`

- All attributes should be read-only

### _Video_Game.rb_

- New VideoGames should initialize with the following attributes:

  - `title`
  - `star_rating`
  - `game_type`
  - `price`
  - `release_date` (Defaulted to `Time.now`)
  - Something else to keep track of each instance of this class as it is created...

- `VideoGames` have many `Purchases`

- `VideoGames` have many `SteamUsers` through `Purchases`

- `title`, `release-date`, & `game_type` should be read-only. The rest should be accessible.

---

## Class and Instance Methods

---

Lets program some methods that will connect our classes and allow them to gather interesting data about themselves and the other classes.

_reminder - class methods are denoted by a "." at the beginning (e.g. ".fullest_steam_library") and instance method are denoted by a "#" at the beginning (e.g. "#steam_users_games")_

- All classes should have a `@@all` class variable that serves as a collection of all instances of that class. Each class should also have a `.all` class method that returns the collection of all created instances of that class.

### _SteamUser.rb_

The SteamUser class should have the following methods:

- `#new_purchase` takes in 2 arguments (amount, video_game) and uses the purchase class to create a new purchase.
- `#purchases` returns a collection of a user's purchases
- `#games` returns a collection of all the games in a a user's library
- `.user_with_most_games` `puts` to the terminal `"The user with the most games in their library is _____ with ____ games!"`

### _Video_Game.rb_

The VideoGame class should have the following methods:

- `#purchases` returns a collection of all times a game has been purchased
- `#owners` returns a collection of all the users who have purchased the game
- `.most_purchased_game` returns the game that has been purchased the most times
- `.average_game_price` returns the average price of all games

### _Purchase.rb_

The Purchase class should have the following methods:

- `#report` puts to the console a detailed report of all attributes of a purchase displayed however you choose

(BONUS If we have time)

- `.highest_rated_game` returns the game with the most amount of 5 star ratings. includes the number of times it has been rated 5 stars
- `.most_popular_game_among_users_ages_9_to_18` returns the most purchased game only amongst
- `most_common_game_type`
- `.oldest_user` returns the oldest user
- `.average_user_age` returns the average of the ages of all users
- `#new_purchase` Should only create a new video game if it doesn't already exist.
