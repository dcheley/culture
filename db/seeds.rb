# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({ email: "admin@email.com", password: "123456", admin: 1 })

Content.create([
  { name: "The Tour",
    description: "One of the best ways to become acquainted with your coworkers
      and gain an understanding what they do is by taking a tour of the
      organization. You have been assigned a tour guide for this exercise and
      can find more details in your email inbox. Don't forget to ask the below
      questions to help you make the most of the exercise.",
    task_one: "Ask what certain employees are working on outside of your area.",
    task_two: "Ask your tour guide what you can do to make the organization a better place to work.",
    task_three: "Ask your tour guide what advice would they have wished they received on their first day in the organization.",
    task_four: "Ask how your positions interact with one another in the organization and what qualities they value in a co-worker.",
    task_five: "Ask what can you do to better their work experience?"
  },
  { name: "Team Meeting",
    description: "You’re going to spend a lot of time with your new team members
      , so it is important that you learn about the team norms and values before
      beginning to work with them. This activity will allow you to discuss the
      team’s practices on feedback, recognition, disagreements and collaboration.
      More information has been sent to your email inbox on the activity and a
      list of questions has been provided below to steer the meeting.",
    task_one: "Ask how you should raise concerns that you have.",
    task_two: "Ask how you will work together, what should you expect of one another.",
    task_three: "Ask how you will recognize one another.",
    task_four: "Ask how you will work through a disagreement.",
    task_five: "Ask what they like to see in a teammate."
  },
  { name: "Stakeholder Exposure",
    description: "You just joined a great organization that contributes a great
      deal of value to society. In this activity you will learn more about how
      your workplace betters society by speaking to a stakeholder of the
      organization. Further details are in your email inbox and a set of questions
      is attached below that need to be answered during the activity.",
    task_one: "Ask how your organization betters the life of the stakeholder.",
    task_two: "Ask what the stakeholder thinks your organization does to better society.",
    task_three: "Ask how your organization can do even better at providing value to society.",
    task_four: "Ask the stakeholder to tell you a firsthand story of your organization affecting them positively.",
    task_five: "Ask why you should be proud of your everyday work."
  },
  { name: "Pre-first day Meet and Greet",
    description: "We know the first day at work can be intimidating, so we have
      assigned you an integration buddy that will help you with the transition.
      Your buddy will want to meet with you before your first day. This meeting
      can take place either over phone, coffee, lunch, Skype or any other means
      you agree on. Check your email inbox for more details on the meet and greet.
      Below you will find questions to help guide the meeting and help you learn
      more about your new workplace. Have fun!",
    task_one: "Ask how you become valued as a co-worker in the organization.",
    task_two: "Ask what the team liked to see in a new employee.",
    task_three: "Ask what you can do before your first day to better your onboarding process.",
    task_four: "Ask what challenges you can expect.",
    task_five: "Ask if there are any after work activities that you can get involved in."
  },
  { name: "One-on-one with Manager",
    description: "The biggest indicator of employee success is the quality of
      the employee - manager relationship. It is important for regular
      conversations to take place from the beginning of the new hire's journey in
      order to foster this relationship. A one-on-one has been scheduled with your
      immediate manager and more information about the meeting can be found in
      your email inbox. Below are questions you can use to guide the conversation
      in order to start the relationship off on the right foot.",
    task_one: "Ask what the vision of the organization is.",
    task_two: "Ask about their story; how they became a manager.",
    task_three: "Explain where you hope to be in 5 years.",
    task_four: "Ask how you will be provided feedback on your work.",
    task_five: "Ask what the best way is to voice a contrasting opinion."
  },
  { name: "Lunch with co-worker",
    description: "Employees that eat lunch together are more likely to create
      close knit bonds. This activity will allow you to better get to know your
      colleagues over a lunch break. More details about when and who you will be
      having lunch with have been sent to your email inbox. Remember to ask the
      questions below to ensure you get the most out of the activity.",
    task_one: "Ask how employees at the lunch rely on one another.",
    task_two: "Ask how your job and their job are dependent on one another.",
    task_three: "Ask what you can do to make their day run more smoothly.",
    task_four: "Ask what a successful day looks like to them.",
    task_five: "Ask what they do with their free time."
  },
  { name: "Job Shadowing",
    description: "Understanding the work of your colleagues creates a more
      holistic organization. Employees who comprehend the day-to-days of their
      coworkers better understand who is dependent on them, who they are dependent
      on and how their work feeds into the bigger picture. For this activity you
      will spend some time job shadowing a co-worker in order for you to form
      these understandings. More information has been sent to your inbox about the
      activity.  Don’t forget about asking the questions below.",
    task_one: "Ask what the biggest challenge they face is.",
    task_two: "Ask what other teams and employees they interact with throughout the day.",
    task_three: "Ask how their team works together.",
    task_four: "Ask how they are dependent on your team.",
    task_five: "Ask how your team is dependent on their team."
  },
  { name: "Superier's expectations",
    description: "Each manager has their own norms and practices that shape
      their expectations of their employees. This activity will allow you to learn
      more about what your manager expects of you. More information on the
      activity has been sent to your email inbox and there are questions posted
      below to help you get the most out of the conversation.",
    task_one: "Ask for examples of well-done work from others.",
    task_two: "Ask how you can go above and beyond.",
    task_three: "Ask if perfection or speed out of the door is more valued.",
    task_four: "Ask what a successful day for your self should look like.",
    task_five: "Ask how failure is perceived."
  },
  { name: "Coffee with a co-worker",
    description: "Nothing quite sparks a conversation about integrating a new
      employee into an organizational culture like a cup of Joe. For this
      integration activity, you will take some time away from the desk and go for
      a coffee with a co-worker. More information about the activity has been sent
      to your email inbox. Remember to ask the questions below.",
    task_one: "Ask what their best memory is from working in the organization.",
    task_two: "Ask how the organization could be bettered from an operational standpoint.",
    task_three: "Ask what a typical day to day looks like for them.",
    task_four: "Ask about their career aspirations.",
    task_five: "Ask about how they got to where they are in the organization."
  },
  { name: "Career Progression Discussion",
    description: "This activity will allow you to better understand how your
      career path will play out in the organization. For this activity you will 
      speak with your manager about the employee life cycle in the organization
      and how it will align with your career aspirations. There are more details
      in your email inbox on the activity and there is also list of questions
      below to help guide the conversation.",
    task_one: "Ask where an employee progresses in 1, 3, 5 and 10 years’ time.",
    task_two: "Ask how you can reach your career aspirations.",
    task_three: "Ask what kind of training is offered for your specific aspirations.",
    task_four: "Ask how to gain mentor-ship for your specific career aspirations.",
    task_five: "Ask what you need to accomplish this year to reach your 1 year goals."
  }])
  # { name: "",
  #   description: "",
  #   task_one: "",
  #   task_two: "",
  #   task_three: "",
  #   task_four: "",
  #   task_five: ""
  # },
