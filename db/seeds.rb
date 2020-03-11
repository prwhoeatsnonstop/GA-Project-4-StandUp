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

  human1 = User.new(email: 'may@gmail.com', encrypted_password: '234567', created_at: 'now', updated_at: 'now' );
  human1.save

  human2 = User.new(email: 'nick@gmail.com', encrypted_password: '123456', created_at: 'now', updated_at: 'now' );
  human2.save

  board1 = Board.new(accomplishment: 'HTML, CSS, JavaScript', challenges: 'Daily assignments', task: 'complete project 1', resources: 'stack overflow', user_id: 2, created_at: '2020-03-02');
  board1.save

  board2 = Board.new(accomplishment: 'Node, Express', challenges: 'turn setting up of express as second muscle', task: 'complete project 2', resources: 'dev community', user_id: 1, created_at: '2020-03-03');
  board2.save

  board3 = Board.new(accomplishment: 'Ruby', challenges: 'Understanding ruby syntax', task: 'complete project 3', resources: 'dev community', user_id: 1, created_at: '2020-03-04');
  board3.save

  board4 = Board.new(accomplishment: 'React', challenges: 'fiddle with React', task: 'complete project 4', resources: 'dev community', user_id: 2, created_at: '2020-03-05');
  board4.save

  board5 = Board.new(accomplishment: 'basic css', challenges: 'positioning', task: 'css assignment', resources: 'css tricks', user_id: 1, created_at: '2020-03-06');
  board5.save

  board6 = Board.new(accomplishment: 'the last part of cs', challenges: 'fiddle with cs', task: 'computer science', resources: 'GA', user_id: 2, created_at: '2020-03-07');
  board6.save

  board7 = Board.new(accomplishment: 'style edit form', challenges: 'positioning', task: 'make form appealing', resources: 'dev community', user_id: 1, created_at: '2020-03-08');
  board7.save

  board8 = Board.new(accomplishment: 'fix some ruby bug', challenges: 'find the source of ruby bugs', task: 'use bye bug to debug', resources: 'dev community', user_id: 2, created_at: '2020-03-09');
  board8.save

  board9 = Board.new(accomplishment: 'fix some JS bug', challenges: 'find the source of JS bugs', task: 'debug JS, and persevere', resources: 'dev community', user_id: 1, created_at: '2020-03-10');
  board9.save

  board10 = Board.new(accomplishment: 'did some portfolio research', challenges: 'choosing template', task: 'not to use template and use HTML & CSS', resources: 'MDN', user_id: 1, created_at: '2020-03-11');
  board10.save