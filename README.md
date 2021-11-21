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

### Teams
Presents teams of legue list.
By tapping to cell there is transition to current team detailed view with additional info, like profile and lineup.
In detailed view we can mark team as favorite and this will be marked at the list view.

### Games
Presents results of games list.
By tapping to cell there is transition to current game detailed view with additional info, like game summary and player of the game.
In detailed view we can mark one or two teams from pair as favorite and this will be marked at the list view in all games were team is.

### News
Presents latest legue news list.
By tapping to cell there is transition to current news detailed view with additional info, like large photo and full text of news.
When we go to detailed view with full news, and going back to list this news marks as read.

### Developers
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

Little article about our work process https://stas0n.dev/2021/11/21/first-teamwork-practice/
