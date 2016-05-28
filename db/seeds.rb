# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Mentor.delete_all
Mentee.delete_all
Course.delete_all
HelpCategory.delete_all
MentorCourse.delete_all
MenteeCourse.delete_all
MentorHelpCategory.delete_all
MenteeHelpCategory.delete_all

users = User.create([
  { email: 'paul@example.com', password: 'password' },
  { email: 'sam@example.com', password: 'password' },
  { email: 'dimitri@example.com', password: 'password' }
])

mentors = Mentor.create([
  { user_id: users[0].id, description: 'Strong Front End Dev' },
  { user_id: users[1].id, description: 'Da best in da whole wide world' }
])

mentees = Mentee.create([
  { user_id: users[2].id, description: 'Strong FEWD' }
])

courses = Course.create([
  { institution: 'General Assembly', description: 'Web Development Immersive' },
  { institution: 'General Assembly', description: 'User Experience Immersive' }
])

help_categories = HelpCategory.create([
  { name: 'Ruby' },
  { name: 'Bash' },
  { name: 'Javascript' }
])

mentor_courses = MentorCourse.create([
  { mentor_id: mentors[0].id, course_id: courses[0].id },
  { mentor_id: mentors[1].id, course_id: courses[0].id },
  { mentor_id: mentors[1].id, course_id: courses[1].id }
])

mentee_courses = MenteeCourse.create([
  { mentee_id: mentees[0].id, course_id: courses[0].id }
])

mentor_help_categories = MentorHelpCategory.create([
  { mentor_id: mentors[0].id, help_category_id: help_categories[0].id },
  { mentor_id: mentors[0].id, help_category_id: help_categories[1].id },
  { mentor_id: mentors[1].id, help_category_id: help_categories[2].id },
])

mentee_help_categories = MenteeHelpCategory.create([
  { mentee_id: mentees[0].id, help_category_id: help_categories[0].id }
])

