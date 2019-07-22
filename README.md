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
  - Something else to keep track of each instance of this class as it is created...

- `VideoGames` have many `Purchases`

- `VideoGames` have many `SteamUsers` through `Purchases`

- `title` should be read only.

---

## Class and Instance Methods

---

Lets program some methods that will connect our classes and allow them to gather interesting data about themselves and the other classes.

_reminder - class methods are denoted by a "." at the beginning (e.g. ".fullest_steam_library") and instance method are denoted by a "#" at the beginning (e.g. "#steam_users_games")_

- All classes should have a `@@all` class variable that serves as a collection of all instances of that class. Each class should also have a `.all` class method that returns the collection of all created instances of that class.

### _SteamUser.rb_

The SteamUser class should have the following methods:

- `#new_purchase` given an argument of a video game object, uses the purchase class to create a new purchase of that video game.
- `#purchases` returns a collection of a user's purchases
- `#games` returns a collection of all the games in a a user's library
- `.user_with_most_games` `puts` to the terminal `"The user with the most games in their library is _____ with ____ games!"`
- `.average_user_age` `puts` to the terminal `"The average age of all current users is ___!"`

### _Video_Game.rb_

The VideoGame class should have the following methods:

- `#purchases` returns a collection of all purchases of a game
- `#owners` returns a collection of all the users who have purchased the game
- `#find_by_name` takes an argument of a game name and returns the game object with that name. Returns nil if none exists.
- `.most_purchased_game` returns the game that has been purchased the most times

### _Purchase.rb_

The Purchase class should have the following methods:

- `#report` puts to the console a detailed report of all attributes of a purchase displayed however you choose

---

(BONUS If we have time)

- `.most_common_game_type` (Add a gametype to each video game)
- `.oldest_user` returns the oldest user
- `.average_user_age` returns the average of the ages of all users
- `#new_purchase` Should only create a new video game if it doesn't already exist.
