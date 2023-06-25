Welcome to this project, to install it follow the next steps:

1. On root directory, launch the next commands to install the project requirements:  

    pipenv shell

    pipenv install

If you don't have installed pipenv run: pip install pipenv (You need to have installed pip, if not, use python3 install pip)

It's really important to run "pipenv shell" each time you want to code on the project in order to use the dependencies of the project.

2. In order to work properly, create a Postgres database with the config set in Settings.py. It's recommended to have installed PgAdmin4 too so it'll be
easier to manipulate the database. It may require so time to prepare Postgres if it's the first time you're using it. Be patient.


Gitflow:

1. Create a new branch for each new feature with the structure (without ''): '_ticketId_featureName'. If you want to add more subbranches: 
'_ticketId_featureName_subFeatureName'

2. Commit and push your changes on the target branch. When the feature is ready, set a Merge Request to Develop (NEVER to main directly!) and don't merge the
branch until it's approved at least by one of the project members.

3. Before merging the branch, pull Develop with command "git pull origin develop" on your current working branch. This will download the changes on develop and
will allow you to fix the conflicts. Never merge a branch with conflicts or with commits behind the target branch.

4. Commit structure: When commiting, use the next structure: "Feature/Fix/etc.(ticketId): Title: Description"

Pipfile:

If you need to install any new dependencies remember to add them to the Pipfile and run "pipenv lock" after it.

