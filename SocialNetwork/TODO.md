
//  TODO.md
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/25/23.
//

# TODO

Your first step should be to examine the JSON. The URL you want to use is this: https://www.hackingwithswift.com/samples/friendface.json – that’s a massive collection of randomly generated data for example users.
As you can see, there is an array of people, and each person has an ID, name, age, email address, and more. They also have an array of tag strings, and an array of friends, where each friend has a name and ID.

- X Fetch the data and parse it into User and Friend structs.
- X Display a list of users with a little information about them, such as their name and whether they are active right now.
- X Create a detail view shown when a user is tapped, presenting more information about them, including the names of their friends.
- Before you start your download, check that your User array is empty so that you don’t keep starting the download every time the view is shown.
