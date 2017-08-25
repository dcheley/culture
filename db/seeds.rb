# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({ email: "clearbanc@email.com", password: "123456", admin: 1, name: "Karman", organization: "Clearbanc", title: "Boss" })

Content.create([
  { name: "Tour",
    new_hire_description: "One of the best ways to become acquainted with your coworkers
      and gain an understanding what they do is by taking a tour of the
      organization. You have been assigned a tour guide for this exercise and
      can find more details in your email inbox. Don't forget to ask the below
      questions to help you make the most of the exercise.",
    admin_description: "One of the best ways to integrate a new hire into your
      organizational culture is by having them take a tour of the workplace. On
      a tour, a new hire is able to meet coworkers from other sectors of the
      organization and gain an understanding of what they do. To make sure that
      the new hire gets the most out of the exercise select from the below list
      the content that you want the tour guide to convey to the new hire.",
    task_one: "Explain what certain employees are working on outside of the new hire's area.",
    task_two: "Explain what can be done to make the organization a better place to work.",
    task_three: "Explain advice they have wished they received on their first day in the organization.",
    task_four: "Explain how the new hire`s position will interact with other units in the organization.",
    task_five: "Explain what the new employee can do to better their work experience.",
    task_six: "Explain what qualities the organization values in a co-worker."
  },
  { name: "Team Meeting",
    new_hire_description: "You’re going to spend a lot of time with your new team
      members, so it is important that you learn about the team norms and values before
      beginning to work with them. This activity will allow you to discuss the
      team’s practices on feedback, recognition, disagreements and collaboration.
      More information has been sent to your email inbox on the activity and a
      list of questions has been provided below to steer the meeting.",
    admin_description: "Your new hire’s success is highly dependent on how they
      work with is current employees, so it is important that they learn about the
      team norms, values and practices before getting started. This activity will
      allow the new hire and their team members to meet and discuss practices on
      feedback, recognition, disagreements and collaboration. To make sure that
      the new hire gets the most out of the exercise select from the below list
      the content that you want the tour guide to convey to the new hire.",
    task_one: "Explain how the new hire should raise concerns that they have.",
    task_two: "Explain how you will work together, what should you expect of one another.",
    task_three: "Explain how you currently recognize one another.",
    task_four: "Explain how you will work through a disagreement.",
    task_five: "Explain what the team likes to see in a new hire."
  },
  { name: "Stakeholder Exposure",
    new_hire_description: "You just joined a great organization that contributes a great
      deal of value to society. In this activity you will learn more about how
      your workplace betters society by speaking to a stakeholder of the
      organization. Further details are in your email inbox and a set of questions
      is attached below that need to be answered during the activity.",
    admin_description: "Your new hire just joined a great organization that contributes
      a great deal of value to society. It is important that the new hire understands
      this value that the organization brings to society in order to pour meaning into
      their daily work. This activity will allow the new hire to speak to one of the
      organization`s stakeholders in order to better understand of the workplace's
      impact on society. To make sure that the new hire gets the most out of the
      exercise select from the below list the content that you want the tour guide
      to convey to the new hire.",
    task_one: "Explain how the organization betters your life as a stakeholder.",
    task_two: "Explain how the organization betters society.",
    task_three: "Explain how the organization can do even better at providing value to society.",
    task_four: "Tell a firsthand story of the organization affecting them positively.",
    task_five: "Explain why the new hire should be proud of their everyday work."
  },
  { name: "Pre-first day Meet and Greet",
    new_hire_description: "We know the first day at work can be intimidating, so we have
      assigned you an integration buddy that will help you with the transition.
      Your buddy will want to meet with you before your first day. This meeting
      can take place either over phone, coffee, lunch, Skype or any other means
      you agree on. Check your email inbox for more details on the meet and greet.
      Below you will find questions to help guide the meeting and help you learn
      more about your new workplace. Have fun!",
    admin_description: "The first day at work can be intimidating, so we have created
      an activity that will allow the new hire to meet a current employee before
      their first day in order to ease the transition.  This meeting can take place
      either over phone, coffee, lunch, Skype or any other means the attendees agree
      on. Below you will find content that you can assign to help guide the meeting.",
    task_one: "Explain how you become valued as a co-worker in the organization.",
    task_two: "Explain what the team likes to see in a new employee.",
    task_three: "Explain what I can do before my first day to better my transition.",
    task_four: "Explain what challenges I should expect.",
    task_five: "Explain if there are any after work activities that I can get involved in."
  },
  { name: "One-on-one with Manager",
    new_hire_description: "The biggest indicator of employee success is the quality of
      the employee - manager relationship. It is important for regular
      conversations to take place from the beginning of the new hire's journey in
      order to foster this relationship. A one-on-one has been scheduled with your
      immediate manager and more information about the meeting can be found in
      your email inbox. Below are questions you can use to guide the conversation
      in order to start the relationship off on the right foot.",
    admin_description: "The biggest indicator of employee success is the quality
      of the employee - manager relationship. It is important for regular conversations
      to take place from the beginning of the new hire's journey in order to foster
      this relationship. This activity will allow you to schedule a one-on-one with
      your new employee in order to start the relationship off on the right foot.
      Below is some content you can assign to help steer the initial meeting.",
    task_one: "Explain what the vision of the organization is.",
    task_two: "Explain your story; how did you become a manager.",
    task_three: "Ask the new hire where they hope to be in 5 years.",
    task_four: "Ask how they will like to be provided feedback on their work.",
    task_five: "Explain how you provide feedback to other workers.",
    task_six: "Explain the best way to voice a contrasting opinion."
  },
  { name: "Lunch with co-worker",
    new_hire_description: "Employees that eat lunch together are more likely to create
      close knit bonds. This activity will allow you to better get to know your
      colleagues over a lunch break. More details about when and who you will be
      having lunch with have been sent to your email inbox. Remember to ask the
      questions below to ensure you get the most out of the activity.",
    admin_description: "Employees that eat lunch together are more likely to create
      close knit bonds. This activity will allow the new hire to better get to know
      their colleagues over a lunch break. Remember to assign some content below
      to ensure you get the new hire gets the most out of the activity.",
    task_one: "Explain how the employees at the lunch rely on one another in their day to day work.",
    task_two: "Explain how your job and the new hire’s job are dependent on one another.",
    task_three: "Explain what the new hire can do to make the organization run more smoothly.",
    task_four: "Explain what a successful day looks like to you.",
    task_five: "Explain what some of your hobbies are."
  },
  { name: "Job Shadowing",
    new_hire_description: "Understanding the work of your colleagues creates a more
      holistic organization. Employees who comprehend the day-to-days of their
      coworkers better understand who is dependent on them, who they are dependent
      on and how their work feeds into the bigger picture. For this activity you
      will spend some time job shadowing a co-worker in order for you to form
      these understandings. More information has been sent to your inbox about the
      activity.  Don’t forget about asking the questions below.",
    admin_description: "Allowing the new hire to shadow a job in order to gain a
      more holistic view of the organiztion. Make sure you cover the content below.
      Understanding the work of your colleagues creates a more holistic organization.
      Employees who comprehend the day-to-days of their coworkers better understand
      who is dependent on them, who they are dependent on and how their work feeds
      into the bigger picture. For this activity the new hire will spend some time
      job shadowing a co-worker in order for them to form these understandings.
      Don’t forget to assign content below.",
    task_one: "Explain the biggest challenge you face.",
    task_two: "Explain what other teams you interact with throughout the day.",
    task_three: "Explain the norms of how different team works together.",
    task_four: "Explain how the organization is dependent on your team.",
    task_five: "Explain how your team is dependent on other teams."
  },
  { name: "Superior's expectations",
    new_hire_description: "Each manager has their own norms and practices that shape
      their expectations of their employees. This activity will allow you to learn
      more about what your manager expects of you. More information on the
      activity has been sent to your email inbox and there are questions posted
      below to help you get the most out of the conversation.",
    admin_description: "Each manager has their own norms and practices that shape
      their expectations of their employees. This activity will allow the manager
      to explain what they expect of the new hire. Assignable content located below.",
    task_one: "Show examples of well-done work from others.",
    task_two: "Explain how the new hire can go above and beyond.",
    task_three: "Explain if perfection or speed out of the door is more valued.",
    task_four: "Explain what a successful day for your new hire should look like.",
    task_five: "Explain how failure is perceived."
  },
  { name: "Coffee with a co-worker",
    new_hire_description: "Nothing quite sparks a conversation about integrating a new
      employee into an organizational culture like a cup of Joe. For this
      integration activity, you will take some time away from the desk and go for
      a coffee with a co-worker. More information about the activity has been sent
      to your email inbox. Remember to ask the questions below.",
    admin_description: "Nothing quite sparks a conversation about integrating a
      new employee into an organizational culture like a cup of Joe. For this
      integration activity, you will assign an employee to go a coffee with the
      new hire. Remember to assign content in order to guide the activity below.",
    task_one: "Explain your best memory from working in the organization.",
    task_two: "Explain how the organization could be bettered from an operational standpoint.",
    task_three: "Explain what a typical day to day looks like for you.",
    task_four: "Explain your career aspirations.",
    task_five: "Explain how you got to where you are in the organization."
  },
  { name: "Career Progression Discussion",
    new_hire_description: "This activity will allow you to better understand how your
      career path will play out in the organization. For this activity you will
      speak with your manager about the employee life cycle in the organization
      and how it will align with your career aspirations. There are more details
      in your email inbox on the activity and there is also list of questions
      below to help guide the conversation.",
    admin_description: "This activity will allow the new hire to better understand
      how a career path will play out in the organization. For this activity you
      will speak with your new hire about the employee life cycle in the organization
      and how it will align with their career aspirations.",
    task_one: "Explain where an employee progresses in 1, 3, 5 and 10 years' time.",
    task_two: "Explain how they can go about reaching their career aspirations.",
    task_three: "Explain what kind of training is offered for their specific aspirations.",
    task_four: "Explain how they can gain mentor-ship for their specific career aspirations.",
    task_five: "Explain what needs to be accomplished this year for the new hire reach their 1 year goals."
  }])
  # { name: "",
  #   new_hire_description: "",
  #   task_one: "",
  #   task_two: "",
  #   task_three: "",
  #   task_four: "",
  #   task_five: ""
  # },
