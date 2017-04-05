# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Git is a **version control** system that tracks changes in computer files and coordinating work on those files among multiple people. Generally used in software development.

Version control is useful because it gives systems the ability to deal with having a large number of remote repositories that they can work with, so users are able to collaborate with different groups of people in different ways simultaneously.

* What is a branch and why would you use one?

A branch represents an independent line of development. It serves as an abstraction for the edit/stage/commit process that we use in Git. [Found this to be a great description](https://www.atlassian.com/git/tutorials/using-branches)

Branches are used to work on segments of projects without disrupting the current iteration. When you want to make updates, add code/content, regardless of size, branches are used to encapsulate all of that to make sure that unstable code never merges into the main base. When you're happy with the updates made in that branch, you can stage and commit them to be 'merged' into the existing master code. [Another good source](https://www.atlassian.com/git/tutorials/using-branches)

* What is a commit? What makes a good commit message?

Once an update or new piece of code has been added to the 'staging area' git commit can be called **to store the current contents of that index** in a new commit (points at a specific point in the history of project where/when this occurred). It is also accompanied by a message from the user describing the changes.

A good commit message will explain why the change was necessary, how it addresses the issue, and any potential side effects it may have. [Good source](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message) for commit messages

* What is a merge conflict?

A merge conflict generally occurs when your current branch and the branch you want to merge into the current branch have diverged. Essentially, you have commits in your current branch that are not in the other branch, or vice versa [Good source](https://imagej.net/Git_Conflicts)