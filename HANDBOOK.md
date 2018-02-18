# Contributor Handbook
---

Coderplex Campus is a community-driven initiative to improve the state of tech in India. We welcome our community to contribute to help us make this happen. There are many ways you can make differnce:

1. Host a meetup
2. Help us with the codebase 
3. Contribute to the guides 
4. Attend and discuss improvements
5. Become an ambassador


# Hosting a meetup
We encourage organizations to partner with us and host meetups ona a variety of agendas from industry talks to hosting hackathons and coding competitors. To host one please email us at mailto:meetup@coderplex.org.


# Codebase
>The Campus codebase is written in Elxir's Phoenix framework and uses Vue.js as front-end. It uses HTML5 and SASS for markup and styling respectively.


#### Prerequisites
The platform is built on the following stack:


Package |	Version |
| ------- | :------ |
[Vue.js](http://www.vuejs.org) |	~ ^2.8 |
[PostgreSQL](http://www.postgresql.org) |	~10.2n|
[Elixir](http://www.elixir-lang.org) | 	~ ^1.6.0 |
[Phoenix]( http://www.phoenixframework.org)	 | ~ ^1.3.0 |


### Setting Up the development environment

> We will be using a Linux environment for this demo. Platform specific guides can be found [here](link).'

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

Make sure your own on the `staging` bramch

```
$ git status
On branch staging
Your branch is up-to-date with 'origin/staging'.
```






