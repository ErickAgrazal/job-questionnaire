# Answer 4

## Question:

```
Explain how you would make a copy of our production codebase so that you can begin developing a new feature from a project plan and how you would share your work with the world as production software.  Please use exact commands for starting your work, preparing for review, and getting it deployed.
```

## Solution:

1. Before even doing anything, I would make sure that I properly understand the requirement by talking synchronously or asynchronoulsy with person that asked my help. If it is an agile team it is slightly easier, as most of the times the requiremets are written as stories which, unless epics, are very clear, specific and easy to understand.

1. After I understand the requirement, I would clone the project into my local machine the production branch. If the project is using github, the most common branch name is `master`, but lately there are also some called `main`. Assuming the production branch is `master`, and I've already my public keys in the git server, and have the proper access to the remote repository. I would clone the project (If I haven't already):
    ```bash
    git clone <repo_url>
    git checkout -b feature-123  # Assuming there is a feature ID that I can correlate this branch to. Platforms like gitlab already creates the branch, so this process won't be necessary in that scenario.
    ```

1. If there is a test/development database that I could use locally, I would pull that too.

1. Then, I would implement the feature, with its testing (at least unit testing, but depending on the relevance of the requirement, I might also implement functional testing, and/or UI testing) and documentation (at least within the code).

1. Execute the tests scripts, and apply changes if needed, to pass the tests that were already in place.

1. I would then commit my changes and push them to the remote repository.
    ```bash
    git add <all_files>
    git commit -m "<a_proper_message>"
    git push origin feature-123  # Assuming there is a remote repository called origin in my local repository.
    ```
    - I would always verify if there are any changes in the production branch before commiting mine by doing:
        ```bash
        git fetch origin
        git merge origin/master
        ```

1. Assuming we are using github, I would then create a Pull Request from my branch to the QA branch or any other stage before production, asking a review from a peer or lead member.

1. If there are some changes after after the review, I would implement them and push again the changes.

1. If the code gets approved in all the stages before production, then any CI/CD process could pick up the branch, execute its process and deploy the changes to the production infrastructure. The commands to deploy the code can vary a lot depending on each scenario, but a simple one would be to `git pull` the changes to the server.

1. After the deploy I would do, if possible, a last manual verification of the implemented feature to ensure that it is executing properly. This step should not be necessary if the project has a 100% test coverage, but if it something that takes less than 10 minutes, it won't hurt anyone :).