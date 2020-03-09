# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SELECT * FROM boards WHERE created_at BETWEEN '2020-03-08' AND '2020-03-09';

  # user1 = User.new(email: 'nick@gmail.com', encrypted_password: '123456', created_at: 'now', updated_at: 'now' );
  # user1.save

  # user2 = User.new(email: 'may@gmail.com', encrypted_password: '234567', created_at: 'now', updated_at: 'now' );
  # user2.save

# YET TO TEST SEED FILE
  board1 = Board.new(accomplishment: 'did Ruby', challenges: 'fiddle with React', task: 'complete project 4', resources: 'stack overflow', user_id: 2);
  board1.save

  board2 = Board.new(accomplishment: 'did Express', challenges: 'fiddle with React', task: 'complete project 2', resources: 'dev community', user_id: 1);
  board2.save