# NBAapp

This is small mobile app for NBA legue with static data as a source.

### Structure
App's tree of controllers is:
- Tabs controller contains:
    - Teams controller
        - Team deatails controller
    - Games controller
        - Game details controller
    - News controller
        - News details controller
    - Developers controller
        - Member detailed controller

### Teams controller
Presents teams of legue list.
By tapping to cell there is transition to current team detailed view with additional info, like profile and lineup.

### Games controller
Presents results of games list.
By tapping to cell there is transition to current game detailed view with additional info, like game summary and player of the game.

### News controller
Presents latest legue news list.
By tapping to cell there is transition to current news detailed view with additional info, like large photo and full text of news.

### Developers controller
Presents team of project with roles and responsibility of every member.
By tapping to cell there is member detailed view with additional info.

### Used knowledge
1. MVC pattern
2. Singletone pattern
3. Delegate pattern
4. Working with Models
6. Storyboard layout
7. Navigation controller configuration
8. Tab bar controller configuration
9. Table view configuration
10. Custom table view cells
11. Application lifecycle
