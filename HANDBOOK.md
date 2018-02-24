# The Contributor Handbook
------

Coderplex Campus is a community-driven initiative to improve the state of tech in India. We welcome our community to contribute to help us make this happen. There are many ways you can make differnce:

If you are new to open source,  the [How to Contribute to an Open Source Project on GitHub](https://egghead.io/courses/how-to-contribute-to-an-open-source-project-on-github) guide gives you a quick overview on getting started.

>NOTE THAT ALL CONTRIBUTORS ARE EXPECTED TO ADHRE TO THE [CODE OF CONDUCT](CODE_OF_CONDUCT.md)

## Contents
- Host a Meetup
- Help us with the codebase
- Contribute to the guides 
- Attend and discuss improvements
- Become an ambassador


# Host a meetup
We encourage organizations to partner with us and host meetups ona a variety of agendas from industry talks to hosting hackathons and coding competitors. To host one please email us at mailto:meetup@coderplex.org.


# Codebase
>The Campus codebase is written in Elixir's Phoenix framework and uses Vue.js as front-end. It uses HTML5 and SASS for markup and styling respectively.


#### Prerequisites
The platform is built on the following stack:


Package |	Version |
| ------- | :------ |
[Vue.js](http://www.vuejs.org) |	~ ^2.8 |
[PostgreSQL](http://www.postgresql.org) |	~10.2|
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




### Creating a Pull Request
##### What is a Pull Request?
A pull request (PR) is a method of submitting proposed changes to the freeCodeCamp repo (or any repo, for that matter). You will make changes to copies of the files which make up freeCodeCamp in a personal fork, then apply to have them accepted by freeCodeCamp proper

###### Need Help? 
If you require any assiatnce feel free to ping the [Contributors chat room]()

>Important: ALWAYS **EDIT ON A SEPERATEBRANCH**
**NEVER** COMMIT TO THE **STAGING** BRANCH

#### Methods
**There are two methods of creating a pull request:**

Editing files on a local clone (recommended)
- Editing files via the GitHub Interface
- Method 1: Editing via your Local Fork (Recommended)

**Editing files on a local clone (recommended)**
This is the recommended method. Read about How to Seting up a Development Environment.

Rebase with `staging`.

Make sure you see this message on runnning `git status`

`nothing to commit, working directory clean`

If you are not on staging or your working directory is not clean, resolve any outstanding files/commits and checkout staging 

`git checkout staging`

Create a branch off of staging with git:

`git checkout -B branch/name-here`

>Note: Branch naming is important. Use a naming convention fix/short-fix-description or feature/short-feature-description. Review the  guidelines for more detail.

Edit your file(s) locally with the editor of your choice

Check your git status to see unstaged files.

###### Add your edited files: 

`git add path/to/filename.ext`

You can also do: 
`git add .`
to add all unstaged files. Take care, though, because you can accidentally add files you don't want added. Review your git status first.

**Squash your commits if there are more than one.**

If you would want to add/remove changes to previous commit, add the files as in Step 5 earlier, and use git commit --amend or git commit --amend --no-edit (for keeping the same commit message).

Push your commits to your GitHub Fork: `git push origin branch-name-here`
ur branch name 
>Replace `banch-name-here` with yo

**Method 2: Editing via the GitHub Interface**

>Note: Editing via the GitHub Interface is not recommended, since it is not possible to update your fork via GitHub's interface without deleting and recreating your fork.


#### PR Reviews
PR's are reviewed by Issue Moderators who check for two things:

- Code quality
- It's not introuducing any new bugs

>Those who hae experience with developing in Elixir/Phoenix and are willing to become an issue moderator may contact [@akhil]()

#### Stale Issues

We close stale issues **unless:**

- bugs that are confirmed
- pull requests that are waiting on other pull requests to be merged
- features that are a part of a GitHub project

###### If your PR is accepted

Once your PR is accepted, you may delete the branch

`$ git -D branch/name-of-branch`


and delete remote and local branches 


###### If your PR is rejected

Don't worry! You can make changes based on the comments by the reviewers.

If the branch still exists on your local machine,you may make the required changes and amend the commit message by running:

`$ git commit --amend`


# Contribute to the Guides
Have knowledge you want to share? Programmers often lookup  stuff while working. Be the person behind them. Click [here]() to view existing guides. To create a new guide, open an issue in te [learn repository]()

# Attend and discuss improvevents
Be apart of shaping the future - The Coderplex Campus - our ambitous online project for the future of tech Attend our meetups and make a contribution.
For a list of meetups, click [here]()

# Units 

A unit is a coderplex backed student community hosted on a college campus. To know more about units click [here]()
