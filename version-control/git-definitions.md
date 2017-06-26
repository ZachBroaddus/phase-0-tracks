# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
 * Version control is a system that records changes to a file or set of files over time, allows a user to access prior versions of the files, and allows multiple users to merge revisions into the files. It's useful for creating backups of previous versions of a project and it also allows for branching, which is useful for experimentation and allowing multiple users to work on small pieces of a larger project.
* What is a branch and why would you use one?
 * A branch is a copy of a file or set of files that may be created and revised without affecting the original copy, the master branch. Any revisions can later be merged back into the master branch. Branching can occur on multiple levels, as well. For example, it is possible to create a feature branch from the master branch, and then to create a new branch from the feature branch, and so on. Branching is useful for creating revisions to a project that can be easily reversed or debugged, if frequent commits are made. It also allows multiple users to work on independent branches which can then be merged back into the master branch.
* What is a commit? What makes a good commit message?
 * A commit is like a snapshot of a project taken at a given point in time. A good commit message provides specific, meaningful information about the changes that were made within a specific revision.
* What is a merge conflict?
 * Git has the ability to automatically merge branches. Merge conflicts occur when conflicting changes are made to the same line within a file or when edits are made to a given file in one branch, but the file is deleted within the other branch.