=begin
Kiladi : jeu quizz audio
Je lance un son
j'affiche 4 réponses possibles
l'utilisateur clique sur 1 réponse
je lui dis s'il a juste ou faux
je modifie son score
je passe à la question suivante

Score
Timer
=end

user_score = 0

new_citation_list = [
                      {
                        quote: "Life is about making an impact, not making an income.",
                        author: "Kevin Kruse"
                      },
                      {
                        quote: "Whatever the mind of man can conceive and believe, it can achieve.",
                        author: "Napoleon Hill"
                      },
                      {
                        quote: "Every strike brings me closer to the next home run.",
                        author: "Babe Ruth"
                      },
                      {
                        quote: "Definiteness of purpose is the starting point of all achievement.",
                        author: "W. Clement Stone"
                      },
                      {
                        quote: "You miss 100% of the shots you don’t take.",
                        author: "Wayne Gretzky"
                      }
                    ]


puts "Bienvenue dans le jeu Kiladi, le quizz audio trop kikool"
sleep(1)
puts "Devinez à qui appartiennent les citation"
sleep(1)
puts "C'est parti"


10.times do
sleep (1)

rand = new_citation_list.sample(4)
rand_in_4 = rand.sample
puts "Qui a dit ?"
puts rand_in_4[:quote]

puts "indice : la réponse est #{rand_in_4[:author]}"

shuffled_couples = rand.shuffle

shuffled_couples.each do |couple|
  puts couple[:author]
end

puts "Tapez votre réponse en pleine lettre ici"
user_answer = gets.chomp

if user_answer == rand_in_4[:author]
  user_score += 1
  puts "BRAVO ! Bonne réponse"
  puts "Votre score : #{user_score}/10 "
else
  puts ":( MAUVAISE réponse. La bonne réponse était #{rand_in_4[:author]}"
  puts "Votre score : #{user_score}/10 "
end
end

puts "Partie terminée ! Vous avez obtenu le score de #{user_score}/10 "
