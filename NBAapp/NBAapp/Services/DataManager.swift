//
//  DataManager.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 12.11.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    //MARK: - News
    let news: [[String: String]] = [
        ["Id": "1",
         "Title": "Lavigne and DeRozan repeated the achievement of Jordan and Pippen",
         "Subtitle": "Zach Lavigne and DeMar DeRozan became the second duo in Chicago history to score 20+ points in seven straight games. The only Bulls duo to have done so in the past were legendary Michael Jordan and Scottie Pippen",
         "Date": "12-11-2021",
         "Source": "Bleacher Report",
         "Image": "image1"],
        ["Id": "2",
         "Title": "Alex Caruso leads the NBA in interceptions, ranking 120th in playing time",
         "Subtitle": "Chicago defender Alex Caruso made 6 interceptions in today's game against Dallas (117: 107). In total, Caruso makes 2.6 interceptions per game per game, ranking first among all NBA players by this indicator." ,
         "Date": "11-11-2021",
         "Source": "NBA on ESPN",
         "Image": "image2"],
        ["Id": "3",
         "Title": "Terrence Ferguson may continue his career at AEK",
         "Subtitle": "Former Oklahoma player Terrence Ferguson (23 years, 198 cm) is close to signing with Greek AEK. The American defender played for Philadelphia last season. In March he was traded to New York and then expelled.",
         "Date": "10-11-2021",
         "Source": "Twitter Luca D'Alessandro",
         "Image": "image3"],
        ["Id": "4",
         "Title": "Russell Westbrook makes a loss by throwing the ball into the head of Anthony Davis",
         "Subtitle": "Lakers point guard Russell Westbrook tripled on 8 losses to the Heat (120: 117 OT). One of the losses occurred in the third quarter when Westbrook unexpectedly threw the ball at close range at teammate Anthony Davis' head.",
         "Date": "11-11-2021",
         "Source": "Clutch Points",
         "Image": "image4"],
        ["Id": "5",
         "Title": "Clay Thompson announced his upcoming comeback on Instagram",
         "Subtitle": "Golden State Star Defender Clay Thompson posted a photo of himself from practice and announced that he is approaching his debut this season. “Hey Warriors fans, I'm on my way. Show a little patience, the basketball player wrote.“",
         "Date": "12-11-2021",
         "Source": "Twitter Hoop Central",
         "Image": "image5"],
        ["Id": "6",
         "Title": "Miles Turner: 'Gobert played dirty against me'",
         "Subtitle": "Indiana center Miles Turner expressed the opinion that the brawl during the team's match against Utah was the fault of his colleague Rudy Gobert.",
         "Date": "12-11-2021",
         "Source": "Clutch Points",
         "Image": "image6"],
        ["Id": "7",
         "Title": "John Wall's workout video published",
         "Subtitle": "A video of the training of Houston point guard John Wall has been leaked online, showing that the 31-year-old is in good shape.",
         "Date": "10-11-2021",
         "Source": "Twitter Overtime",
         "Image": "image7"],
        ["Id": "8",
         "Title": "Charles Barkley thanks Kevin Durant for a funny episode live",
         "Subtitle": "Inside the NBA presenter Charles Barkley, in a video link with Brooklyn striker Kevin Durant, recalled a funny episode that happened at the end of last season.",
         "Date": "10-11-2021",
         "Source": "NBA on TNT",
         "Image": "image8"],
        ["Id": "9",
         "Title": "Gary Payton II hammered over from Steph Curry's cross",
         "Subtitle": "Warriors defender Gary Payton II continued his streak of spectacular dunks against Minnesota.Payton II threw in an overhead strike from Steph Curry in a quick attack.",
         "Date": "11-11-2021",
         "Source": "Valery Levkin",
         "Image": "image9"],
        ["Id": "10",
         "Title": "Danny Ainge may replace Neil Olshey as general manager of Portland",
         "Subtitle": "If Neil Olshey steps down as president of basketball operations and general manager of Portland, former Boston boss Danny Ainge could take over, sports columnist Howard Beck said. The Blazers are currently investigating Olshey.",
         "Date": "10-11-2021",
         "Source": "open.spotify.com",
         "Image": "image10"],
        ["Id": "11",
         "Title": "Scottie Pippen: Brooklyn May Win The Championship Without Kyrie Irving",
         "Subtitle": "Six-time NBA champion for Chicago, Scotty Pippen, believes Brooklyn can win the title without Kyrie Irving. Irving is suspended by the club because he cannot participate in home games due to refusal of vaccinations.",
         "Date": "10-11-2021",
         "Source": "Twitter SiriusXM NBA Radio",
         "Image": "image11"],
        ["Id": "12",
         "Title": "Kevin Pangos named his newborn son after Bill Baron",
         "Subtitle": "Cleveland's Canadian point guard Kevin Pangos named his newborn son after his friend, Zenit defender Billy Baron. He is next to his wife and Billy, according to the Free Agent Telegram channel.",
         "Date": "10-11-2021",
         "Source": "Telegram channel Free Agent",
         "Image": "image12"],
        ["Id": "13",
         "Title": "Adrian Wojnarovski: Everyone is confident that Clay will truly return",
         "Subtitle": "ESPN insider Adrian Wojnarowski expects Golden State defender Clay Thompson to regain form this season. “Everyone in the league is whispering about Clay Thompson right now. Watching him, making inquiries with the Warriors. And they say that he is in good shape.",
         "Date": "10-11-2021",
         "Source": "Twitter NBA on ESPN",
         "Image": "image13"],
        ["Id": "14",
         "Title": "Richard Jefferson: If Morris hadn't pushed Jokic, Jokic wouldn't have pushed Morris",
         "Subtitle": "Former NBA player, now ESPN expert Richard Jefferson spoke about the clash between Nikola Jokic (Denver) and Markiff Morris (Miami). “It's simple. First, you can't do what Morris did. And you definitely can't do what Jokić did.",
         "Date": "9-11-2021",
         "Source": "Gennady Ilyin",
         "Image": "image14"],
        ["Id": "15",
         "Title": "James Harden scored a triple-double in a win against Magic",
         "Subtitle": "Nets defender James Harden scored a triple double against Magic (123: 90). Harden scored 17 points (6 of 11 field), 11 rebounds and 11 assists in 30 minutes. The triple double was for Harden 59th in his career.",
         "Date": "11-11-2021",
         "Source": "ESPN",
         "Image": "image15"]
    ]
    
    //MARK: - Games
    let games: [[String : String]] = [
        ["id": "1",
         "Score": "112-104",
         "TopPlayer": "Jerami Grant",
         "TopPlayerPhoto": "Jerami_Grant",
         "City": "Boston",
         "Arena": "TD Garden",
         "ArenaPhoto" : "TD_Garden",
         "Attackers": "Pistons",
         "Defenders": "Jazz",
         "Winner": "Pistons",
         "Date": "11-11-2021"],
        ["id": "2",
         "Score": "112-110",
         "TopPlayer": "Derrick Rose",
         "TopPlayerPhoto": "Derrick_Rose",
         "City": "Chicago",
         "Arena": "United Center",
         "ArenaPhoto" : "United_Center",
         "Attackers": "Magic",
         "Defenders": "Knicks",
         "Winner": "Magic",
         "Date": "11-11-2021"],
        ["id": "3",
         "Score": "107-117",
         "TopPlayer": "Luka Doncic",
         "TopPlayerPhoto": "Luka_Doncic",
         "City": "Chicago",
         "Arena": "United Center",
         "ArenaPhoto" : "United_Center",
         "Attackers": "76ers",
         "Defenders": "Bulls",
         "Winner": "Bulls",
         "Date": "11-11-2021"],
        ["id": "4",
         "Score": "88-104",
         "TopPlayer": "Scottie Barnes",
         "TopPlayerPhoto": "Scottie_Barnes",
         "City": "New York",
         "Arena": "Madison Square Garden",
         "ArenaPhoto" : "Madison_Square_Garden",
         "Attackers": "Bulls",
         "Defenders": "Celtics",
         "Winner": "Celtics",
         "Date": "11-11-2021"],
        ["id": "5",
         "Score": "111-100",
         "TopPlayer": "Malcolm Brogdon",
         "TopPlayerPhoto": "Malcolm_Brogdon",
         "City": "Detroit",
         "Arena": "Little Caesars Arena",
         "ArenaPhoto" : "Little_Caesars_Arena",
         "Attackers": "Pacers",
         "Defenders": "Jazz",
         "Winner": "Pacers",
         "Date": "11-12-2021"],
        ["id": "6",
         "Score": "115-109",
         "TopPlayer": "Fred VanVleet",
         "TopPlayerPhoto": "Fred_VanVleet",
         "City": "Philadelphia",
         "Arena": "Wells Fargo Center",
         "ArenaPhoto" : "Wells_Fargo_Center",
         "Attackers": "Bulls",
         "Defenders": "76ers",
         "Winner": "76ers",
         "Date": "11-12-2021"],
        ["id": "7",
         "Score": "98-101",
         "TopPlayer": "Will Barton",
         "TopPlayerPhoto": "Will_Barton",
         "City": "Indiana",
         "Arena": "Gainbridge Fieldhouse",
         "ArenaPhoto" : "Gainbridge_Fieldhouse",
         "Attackers": "Pacers",
         "Defenders": "Pistons",
         "Winner": "Pistons",
         "Date": "11-11-2021"],
        ["id": "8",
         "Score": "123-90",
         "TopPlayer": "Chili Pepperito",
         "TopPlayerPhoto": "James_Harden",
         "City": "Orlando",
         "Arena": "Amway Center",
         "ArenaPhoto" : "Amway_Center",
         "Attackers": "Hawks",
         "Defenders": "Magic",
         "Winner": "Hawks",
         "Date": "11-11-2021"],
        ["id": "9",
         "Score": "108-100",
         "TopPlayer": "Shai Gilgeous-Alexander",
         "TopPlayerPhoto": "Shai_Gilgeous-Alexander",
         "City": "Oklahoma City",
         "Arena": "Paycom Center",
         "ArenaPhoto" : "Paycom_Center",
         "Attackers": "Thunder",
         "Defenders": "Pelicans",
         "Winner": "Thunder",
         "Date": "11-11-2021"],
        ["id": "10",
         "Score": "117-120",
         "TopPlayer": "Bam Adebayo",
         "TopPlayerPhoto": "Bam_Adebayo",
         "City": "Los Angeles",
         "Arena": "STAPLES Center",
         "ArenaPhoto" : "STAPLES_Center",
         "Attackers": "Suns",
         "Defenders": "Lakers",
         "Winner": "Lakers",
         "Date": "11-11-2021"],
        ["id": "11",
         "Score": "118-108",
         "TopPlayer": "Ja Morant",
         "TopPlayerPhoto": "Ja_Morant",
         "City": "Memphis",
         "Arena": "FedExForum",
         "ArenaPhoto" : "FedExForum",
         "Attackers": "Knicks",
         "Defenders": "Grizzlies",
         "Winner": "Grizzlies",
         "Date": "11-11-2021"],
        ["id": "12",
         "Score": "109-119",
         "TopPlayer": "Frank Kaminsky",
         "TopPlayerPhoto": "Frank_Kaminsky",
         "City": "Portland",
         "Arena": "Moda Center",
         "ArenaPhoto" : "Moda_Center",
         "Attackers": "Trail Blazers",
         "Defenders": "Suns",
         "Winner": "Suns",
         "Date": "11-11-2021"],
        ["id": "13",
         "Score": "98-110",
         "TopPlayer": "Kevin Huerter",
         "TopPlayerPhoto": "Kevin_Huerter",
         "City": "Phoenix",
         "Arena": "Footprint Center",
         "ArenaPhoto" : "Footprint_Center",
         "Attackers": "Hawks",
         "Defenders": "Jazz",
         "Winner": "Jazz",
         "Date": "11-09-2021"],
        ["id": "14",
         "Score": "113-127",
         "TopPlayer": "Stephen Curry",
         "TopPlayerPhoto": "Stephen_Curry",
         "City": "New Orleans",
         "Arena": "Footprint Center",
         "ArenaPhoto" : "Footprint_Center",
         "Attackers": "Hawks",
         "Defenders": "Trail Blazers",
         "Winner": "Trail Blazers",
         "Date": "11-08-2021"],
        ["id": "15",
         "Score": "115-118",
         "TopPlayer": "Donovan Mitchell",
         "TopPlayerPhoto": "Donovan_Mitchell",
         "City": "Utah",
         "Arena": "Vivint Arena",
         "ArenaPhoto" : "Vivint_Arena",
         "Attackers": "Jazz",
         "Defenders": "Pelicans",
         "Winner": "Jazz",
         "Date": "11-06-2021"]
    ]
    
    //MARK: - Teams
    let teams: [[String: String]] = [
        ["id": "1",
         "teamName": "Celtics",
         "Founded": "1946",
         "City": "Boston",
         "Arena": "TD Garden",
         "Head Coach": "Ime Udoka",
         "logoImage": "celtics-logo"],
        ["id": "2",
         "teamName": "Bulls",
         "Founded": "1966",
         "City": "Chicago",
         "Arena": "United Center",
         "Head Coach": "Billy Donovan",
         "logoImage": "bulls-logo"],
        ["id": "3",
         "teamName": "Hawks",
         "Founded": "1966",
         "City": "Atlanta",
         "Arena": "United Center",
         "Head Coach": "Billy Donovan",
         "logoImage": "hawks-logo"],
        ["id": "4",
         "teamName": "Knicks",
         "Founded": "1946",
         "City": "New York",
         "Arena": "Madison Square Garden",
         "Head Coach": "Tom Thibodeau",
         "logoImage": "knicks-logo"],
        ["id": "5",
         "teamName": "Pistons",
         "Founded": "1948",
         "City": "Detroit",
         "Arena": "Little Caesars Arena",
         "Head Coach": "Dwane Casey",
         "logoImage": "pistons-logo"],
        ["id": "6",
         "teamName": "76ers",
         "Founded": "1949",
         "City": "Philadelphia",
         "Arena": "Wells Fargo Center",
         "Head Coach": "Doc Rivers",
         "logoImage": "76ers-logo"],
        ["id": "7",
         "teamName": "Pacers",
         "Founded": "1976",
         "City": "Indiana",
         "Arena": "Gainbridge Fieldhouse",
         "Head Coach": "Rick Carlisle",
         "logoImage": "pacers-logo"],
        ["id": "8",
         "teamName": "Magic",
         "Founded": "1989",
         "City": "Orlando",
         "Arena": "Amway Center",
         "Head Coach": "Jamahl Mosley",
         "logoImage": "magic-logo"],
        ["id": "9",
         "teamName": "Thunder",
         "Founded": "1967",
         "City": "Oklahoma City",
         "Arena": "Paycom Center",
         "Head Coach": "Mark Daigneault",
         "logoImage": "thunder-logo"],
        ["id": "10",
         "teamName": "Lakers",
         "Founded": "1948",
         "City": "Los Angeles",
         "Arena": "STAPLES Center",
         "Head Coach": "Frank Vogel",
         "logoImage": "lakers-logo"],
        ["id": "11",
         "teamName": "Grizzlies",
         "Founded": "1995",
         "City": "Memphis",
         "Arena": "FedExForum",
         "Head Coach": "Taylor Jenkins",
         "logoImage": "grizzlies-logo"],
        ["id": "12",
         "teamName": "Trail Blazers",
         "Founded": "1970",
         "City": "Portland",
         "Arena": "Moda Center",
         "Head Coach": "Chauncey Billups",
         "logoImage": "trail-blazers-logo"],
        ["id": "13",
         "teamName": "Suns",
         "Founded": "1968",
         "City": "Phoenix",
         "Arena": "Footprint Center",
         "Head Coach": "Monty Williams",
         "logoImage": "suns-logo"],
        ["id": "14",
         "teamName": "Pelicans",
         "Founded": "2002",
         "City": "New Orleans",
         "Arena": "Footprint Center",
         "Head Coach": "Willie Green",
         "logoImage": "pelicans-logo"],
        ["id": "15",
         "teamName": "Jazz",
         "Founded": "1974",
         "City": "Utah",
         "Arena": "Vivint Arena",
         "Head Coach": "Quin Snyder",
         "logoImage": "lazz-logo"],
    ]
    
    //MARK: - Lineups
    let teamsLineUps: [String: [String]] = [
        "Celtics": ["Jayson Tatum","Jaylen Brown","Josh Richardson","Romeo Langford","Payton Pritchard","Grant Williams","Enes Kanter","Jabari Parker","Aaron Nesmith","Bruno Fernando"],
        "Bulls": ["Coby White","Lonzo Ball","Devon Dotson","Derrick Jones Jr.","Alex Caruso","Troy Brown Jr.","Zach LaVine","Nikola Vucevic","DeMar DeRozan","Ayo Dosunmu"],
        "Hawks": ["Delon Wright", "Jalen Johnson", "Sharife Cooper", "Kevin Huerter", "Skylar Mays", "Lou Williams", "Timothe Luwawu-Cabarrot", "Danilo Gallinari", "Gorgui Dieng", "Trae Young"],
        "Knicks": ["Obi Toppin", "Miles McBride", "Nerlens Noel", "Derrick Rose", "Immanuel Quickley", "Quentin Grimes", "Kemba Walker", "RJ Barrett", "Wayne Selden", "Evan Fournier"],
        "Pistons": ["Chris Smith", "Cade Cunningham", "Frank Jackson", "Hamidou Diallo", "Killian Hayes", "Trey Lyles", "Jerami Grant", "Isaiah Livers", "Kelly Olynyk", "Rodney McGruder"],
        "76ers": ["Coby White","Lonzo Ball","Devon Dotson","Derrick Jones Jr.","Alex Caruso","Troy Brown Jr.","Zach LaVine","Nikola Vucevic","DeMar DeRozan","Ayo Dosunmu"],
        "Pacers": ["Jayson Tatum","Jaylen Brown","Josh Richardson","Romeo Langford","Payton Pritchard","Grant Williams","Enes Kanter","Jabari Parker","Aaron Nesmith","Bruno Fernando"],
        "Magic": ["Obi Toppin", "Miles McBride", "Nerlens Noel", "Derrick Rose", "Immanuel Quickley", "Quentin Grimes", "Kemba Walker", "RJ Barrett", "Wayne Selden", "Evan Fournier"],
        "Thunder": ["Chris Smith", "Cade Cunningham", "Frank Jackson", "Hamidou Diallo", "Killian Hayes", "Trey Lyles", "Jerami Grant", "Isaiah Livers", "Kelly Olynyk", "Rodney McGruder"],
        "Lakers": ["Coby White","Lonzo Ball","Devon Dotson","Derrick Jones Jr.","Alex Caruso","Troy Brown Jr.","Zach LaVine","Nikola Vucevic","DeMar DeRozan","Ayo Dosunmu"],
        "Grizzlies": ["Jayson Tatum","Jaylen Brown","Josh Richardson","Romeo Langford","Payton Pritchard","Grant Williams","Enes Kanter","Jabari Parker","Aaron Nesmith","Bruno Fernando"],
        "Trail Blazers": ["Obi Toppin", "Miles McBride", "Nerlens Noel", "Derrick Rose", "Immanuel Quickley", "Quentin Grimes", "Kemba Walker", "RJ Barrett", "Wayne Selden", "Evan Fournier"],
        "Suns": ["Jayson Tatum","Jaylen Brown","Josh Richardson","Romeo Langford","Payton Pritchard","Grant Williams","Enes Kanter","Jabari Parker","Aaron Nesmith","Bruno Fernando"],
        "Pelicans": ["Coby White","Lonzo Ball","Devon Dotson","Derrick Jones Jr.","Alex Caruso","Troy Brown Jr.","Zach LaVine","Nikola Vucevic","DeMar DeRozan","Ayo Dosunmu"],
        "Jazz": ["Chris Smith", "Cade Cunningham", "Frank Jackson", "Hamidou Diallo", "Killian Hayes", "Trey Lyles", "Jerami Grant", "Isaiah Livers", "Kelly Olynyk", "Rodney McGruder"]
    ]
    
    let developers: [[String: String]] = [
        ["id": "0",
         "first name": "Stanislav",
         "last name": "Buinovsky",
         "roles": "Team lead, developer",
         "responsibility": "Project initialization, Git control, Teams and Developers scenes",
         "telegram": "SBuinovsky",
         "github": "https://github.com/sbuinovsky",
         "photo": "buinovsky"],
        ["id": "1",
         "first name": "Ruslan",
         "last name": "Safin",
         "roles": "Developer",
         "responsibility": "Games scene",
         "telegram": "Flea_Q",
         "github": "github.com",
         "photo": "safin"],
        ["id": "2",
         "first name": "Kristel",
         "last name": "Maksimova",
         "roles": "Developer",
         "responsibility": "News scene",
         "telegram": "Kristel Maksimova",
         "github": "github.com",
         "photo": "maksimova"]
    ]
    private init() {}
}
