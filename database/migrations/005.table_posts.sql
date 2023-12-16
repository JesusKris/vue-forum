-- +migrate Up
CREATE TABLE IF NOT EXISTS Posts (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  content VARCHAR(255) NOT NULL,
  image VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL,
  category_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  privacy VARCHAR(255) NOT NULL,
  FOREIGN KEY(category_id) REFERENCES Categories(id) ON DELETE CASCADE,
  FOREIGN KEY(user_id) REFERENCES Users(id)
);

-- +migrate Down
DROP TABLE Posts;