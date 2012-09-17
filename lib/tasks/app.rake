namespace :app do

  task ensure_development_environment: :environment do
    if Rails.env.production?
      raise "\nI'm sorry, Brett, I can't do that. \n(You're asking me to drop your production db!)"
    end
  end

  desc "Reset"
  task reset: ["db:drop", "db:create", "db:migrate", "db:seed", "app:populate"]

  desc "Populate the database with development data."
  task populate: :environment do
    [
      {text: "My meaning simply is, that whatever I have tried to do in life, I have tried with all my heart to do well; that whatever I have devoted myself to, I have devoted myself to completely; that in great aims and in small, I have always been thoroughly in earnest.", 
        page: 125 },
      {text: "I was just a screw or cog in the great machine I called life, and when I dropped out of it I found I was of no use anywhere else.", 
        page: 50 },
      {text: "Muse, daughter of Zeus, Start from where you will-Sing for our time too.",
        page: 1 },
      {text: "All that is gold does not glitter, Not all those who wander are lost.", 
        page: 349 },
      {text: "There is nothing more deceptive than an obvious fact.", 
        page: 43 },
      {text: "Blow the candle out, I don't need to see what my thoughts look like.", 
        page: 56 },
      {text: "Yes, Lucy, I would choose to marry him. I think it would be the best and highest lot got me-to make his life happy. He loved me first. No one else could be quite what he is to me. But I can't divide myself from my brother for life. I must go away and wait. Pray, don't speak to me again about it.", 
        page: 37 },
      {text: "A body's got to have something all their own.", 
        page: 235},
      {text: "I always find it more difficult to say the things I mean than the things I don't.", 
        page: 78 }
    ].each do |attributes|
      Quote.find_or_create_by_text_and_page(attributes)
    end

  end
end