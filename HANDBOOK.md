# Contributor Handbook
------

Coderplex Campus is a community-driven initiative to improve the state of tech in India. We welcome our community to contribute to help us make this happen. There are many ways you can make differnce:

1. Host a meetup
2. Help us with the codebase 
3. Contribute to the guides 
4. Attend and discuss improvements
5. Become an ambassador


# Hosting a meetup
We encourage organizations to partner with us and host meetups ona a variety of agendas from industry talks to hosting hackathons and coding competitors. To host one please email us at mailto:meetup@coderplex.org.


# Codebase
>The Campus codebase is written in Elixir's Phoenix framework and uses Vue.js as front-end. It uses HTML5 and SASS for markup and styling respectively.


#### Prerequisites
The platform is built on the following stack:


Package |	Version |
| ------- | :------ |
[Vue.js](http://www.vuejs.org) |	~ ^2.8 |
[PostgreSQL](http://www.postgresql.org) |	~10.2n|
[Elixir](http://www.elixir-lang.org) | 	~ ^1.6.0 |
[Phoenix]( http://www.phoenixframework.org)	 | ~ ^1.3.0 |


### Setting Up the development environment

> We will be using a Linux environment for this demo. Platform specific guides can be found [here](link).

#### Forking the Project
Optional [Setup an SSH Key](https://help.github.com/articles/connecting-to-github-with-ssh/) for GitHub.

1. Go to the campus repository: 
2. Click the "Fork" Button in the upper right hand corner of the interface 
3. After the repository has been forked, you will be taken to your copy of the repo at `yourUsername/campus`

#### Cloning your Fork

1. make a new `projects` directory or navigate to your currebt projects  
  `$ mkdir projects` or `$ cd projects`

2. clone the repo using the git clone command:
    `$ git clone https://github.com/yourUsername/freeCodeCamp.git`

> Replace yourUsername with your GitHub username.
up your Upstream
This will create a copy of the campus repo on your computer.

##### Setting up your Upstream


Change directory to the `projects` directory
    `cd projects`
Add a remote to the official repo:
`$ git remote add upstream https://github.com/coderplex/campus.git`


#### Maintaining your Fork

##### Rebasing your Upstream

1. Make sure you're on the `staging` branch

```
$ git status
On branch staging
Your branch is up-to-date with 'origin/staging'.
```
If you're not on staging, change to the `staging`

`$ git checkout staging`
> To know more about the Git Development Wprkflow click [here](https://github.com/rotati/wiki/wiki/How-we-use-master,-staging-and-stable-branch-in-Github). 

> NOTE: Edits to guides and other documents may be pushed directly to the **stable** branch. 

2. Do a pull with rebase against `upstream`

    `$ git pull --rebase upstream staging`

#### Create a Branch

Create a branch with the name of the issue/feature

` $ git checkout -b branch_name`
    
For example: For a feature named login 

`$ git checkout -b feature/login`
 
###### Push the new branch to github

`git push origin feature/login`

> For more about branching, click [here](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)

`
### Formatting

>To read more about linting clcik [here](https://stackoverflow.com/questions/8503559/what-is-linting)
`
We will be using Elixir's built-inhich code formatter which ships wuth version 1.6 and up. The relavent docs can be found [here](https://hexdocs.pm/mix/master/Mix.Tasks.Format.html)

`mix format file_name.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"

### Testing

Before making a pull request (PR), run the Phoenix test suite:

`$ mix test`

> More about the Phoenix Test Suite can be found [here](https://hexdocs.pm/phoenix/testing.html)


## Setting up the platform on your system

Once done with setting up the dev menvironment, It's time to compile the project and run it on the server.

First we'll install and update all the missing pacakges and:

`$ mix deps.get && mix deps.update --all`

Then create database migrations:

`$ mix ecto.migrate`

Then we compile the Phoenix code

`$ mix phx.compile`

Finally, run it on the server:

`$ mix phx.server`

#### So, where do I come in?

You can find an issue and ask to be assigned, file an issue for a new feature or build one of the pending features

###### Test,Test,Test!

Run the `$ mix test ` command when you're ready to share.

#### Squashing Commits

`git rebase -i HEAD~n
`
> n is the number of previous commits to be squashed.

#### Commit message Template
##### Title
` <type> [name] : [short description] `
##### Description

**Reference:** [Issue number]

`[List of changes made]`

`[Optional description of the commit]`

##### Example

###### Title
Issue search-bar:  Changed search bar icon

###### Description

Reference: Issue #228

1. Changed search icon
2. Added a border of 3px




`### 

