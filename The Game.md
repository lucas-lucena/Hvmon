# HVMon Concept
**Game Name:** 
*HVMon: High-order Virtual Monsters*

**Description:**
A turn based battle arena/strategy player versus player, in which you, as the player, can create

your own team of battle monsters to fight other players. With 3 classes of monsters to choose and more

than 50 different types of move sets.


 ## How the game works
 -   Every match will be played in a ring.
    
    -   Each ring has 2 sides.
        -   Every side is dedicated to its respective player.
        -   Every player needs to assign 4 monsters to a ring.
-   At the start of the battle, the player chooses its first monster to come in to the field.
    
    -   The player can choose between a variety of monsters.
        -   Each monster is part of a group.
            -   Aggressive
                --   Attributes focused in attack
            -   Defender
                --   Attributes focused in health and/or defense
            -   Supportive
                --   Attributes focused in speed

-   Calculus of the attacks are based on: `(ATK * ATK_Move) / DEF`
    
-   If a monster dies, the player needs to choose another monster from its roster to come in to the field
    
    -   If there is no monster in the roster or in the field, the player loses.


## How the combat works
-   With 4 monsters on each side of the ring, the player chooses a monster to be the first to go to the field.
-   Every round the player choose an action.
    -   The player can choose between 3 types of actions.
        -   Use a movement.
            -   The Monster with the highest speed attacks first.
                1.   If the speed of both monsters are equal, the monster with the lowest amount of health attacks first.

                2.   If the amount of health of both monsters are equal, the monster that will attack first will be decided randomly.
                   
            -   If the movement used is an effect:
                1.   The same effect cannot be used in different enemy monsters at the same time.
                
                2.   Effect only persists if the monster is in the field.
                
                3.   If a “buff” is in effect and an enemy monster uses a movement that does the opposite of what given “buff” does, the “buff” is cancelled.

	                   *`Example:  ally uses “Outrage”, enemy uses “Roar”, the “buff” from “Outrage” is cancelled, but “Roar” doesn’t make an effect.`*
        -   Retreat a monster.
            --   The player removes the allied monster from the field and select another from its roster.
            
        -   Admit defeat.
            --   the player loses the match.
            
-   If a allied monster dies, the player needs to choose another allied monster from its roster to battle.
    -   If all allied monsters are dead, the opponent wins.

-   If timer is over:
    -   wins the player with the most allied monsters alive in its roster
        -   wins the player in which the allied monster has the most remaining percentage of health points.


---