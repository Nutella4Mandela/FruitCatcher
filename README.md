# FruitCatcher
I made this game in about a week in Processing. This was inspired by birds and beans, one of my childhood games. It was a one man 
project that I had to do in one of my college semesters. It was a lot of fun to make. The process was stressful and I had a lot of hurdles
that I had to make(specifically had to rewrite the code that one time, but for a beginner, I did pretty well. I wasn't really finished because I
had to make the sprite for the tongue and I also had to animate the rabbit, but the concept is what matters to me.
# About
This is a game about a rabbit catching fruit with its elongated tongue. It is a simple game where you get points by catching fruits in a diagonal
position. The trick is that the only way to catch them is to touch the fruit with the tip of your tongue. The fruit is also an obstacle, falling at a 
random speed to get you. If you miss one of the apples, part of the floor disappears, making your movement limited. If you touch one of the 
apples with your head, you fall and you lose.

![This is an image](/data/FruitCatcher.PNG)

# Biggest Challenges
The biggest challenge I have ever had was getting the tongue to work the right way. There were so many loopholes that I had to fix, such
as moving while using your tongue, which makes the game a lot easier and less fun, pressing j and l at the same time, which made the
tongue fly to other places. I had to use Boolean a lot to get this to work the way I wanted it to, and I figured it out eventually. I also had a
problem with the fruits as well; falling to places I did not want them in. I had to make each apple have an individual x coordinate to make
that work. I also had a problem with the blocks when they were disappearing, affecting the player in some way. The way I fixed that is by
making an invisible wall to block the player from going there. Since I have a lot of experience with music composing and tracking, I made
the music in a program called Famitracker.

![This is an image](/data/BetaFruit.PNG)

# Unimplemented Features
I wanted the rabbit sprites to be animated in game, but since I had limited time, I could not implement it in the game, unfortunately. I 
only succeeded in only adding the rabbit walking animation in the title screen, but not in the gameplay. I also wanted to add more than 
just apples in the game(As it is called Fruit Catcher), but my time was limited. I also wanted to add more sound, but due to constrains, I 
only had the chance to get one music in. I also wanted to add a tongue sprite as well.

# Instructions
The game starts at the title screen, where you see the rabbit walking through endless blocks. To start the game, you click the left mouse 
button. In the game, you can do two things: move, or use your tongue. To move around, you must press A or D. To use your tongue, you 
press J or L depending on where you want to target. To keep your tongue still up, you must hold one of the buttons. You cannot move 
while using your tongue. Of course, the apples fall at random speeds, so it might take some time for them to fall, but once they do, that 
is where it gets really challenging. The more apples, the more points. If you fail to catch one of the apples and if it hits the ground, the 
block will disappear, making the player lose movement. If the player gets hit by the apple, it falls and it is game over. However, you can 
play the game again if you lost by left clicking to go back to the title screen and left clicking again to go to the gameplay.

![This is an image](/data/FruitCatchFinal.PNG)
