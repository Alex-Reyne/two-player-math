# classes

1. Game (contains game loop and player turn info)

   > - Holds all the prompts for differnt actions
   > - Needs access to if player answer is true or false
   > - Methods: start_prompt, turn_prompt, question_prompt, winner_prompt

2. Player (contains player input)

   > - Holds Player lives and name
   > - Needs access to correct answer and turn info
   > - Methods: lose_life, is_turn?, has_lost(lives)

3. Questions
   > - Generates questions and correct answers
   > - Needs access player answer input
   > - Methods: question_generator, check_answer(input)
