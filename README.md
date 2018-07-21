# chesskell

## Recommanded setup

To compile and run the needed setup is relatively easy:

1) Install stack with following [instructions](https://docs.haskellstack.org/en/stable/install_and_upgrade/).
2) Run `stack build`
3) Run `stack exec chesskell-exe`

The first build will take time due to how stack needs to download the compiler.

For development below is list of some tools.
1) Haskell Language Server [HIE](https://github.com/haskell/haskell-ide-engine) Installing this will take LONG time so be prepared, for this project building the only with `make build` should suffice instead of `make build-all`. There is a plugin for VSCode, Sublime, Atom, etc make it work.
2) Install hlint (optional, language server should install it)

## Development guidelines

1) Listen and correct errors given by compiler and hlint, build and lint should not give any warnings.
2) If when looking at a piece of code you think "I do not know how this works" or "This looks messy" always refactor!
3) Make tests for pure code (look for [HUnit](https://hackage.haskell.org/package/HUnit) for information) and manually test impure code.
4) Run tests before committing `stack test`.
5) Always annotate function signature.
6) Always use strictest typeclass.
7) Prefer to use haskels own functions instead of making own, even when trivial to implement.
8) Refactor repeated chucks of code.
9) Document exposed functions, do not document unexposed functions. Should they be complex and need documentation refer to step 2.
10) Before merge write to changelog what was done.

## Version control guides

Commits follow the following structure: `TAG, COMPONENT: DESCRIPTION`

Where tag describes the type of commit, component desicbes what part of program it affects and description descibes shortly what it does.

|TAG    | Intrepretation    |
|:------|-------------------|
|feat   | Adds or alters functionality  |
|bugfix | Corrects functionality to intended |
|dep    | Adds a new dependancy |
|other  | If not listed above   |

Each feature will be done in own branch which will follow the format:

`BRANCH_TYPE/descption` where desction is 2-3 word descrition of inteded change and BRANCH_TYPE is in following.

|Type   |Interpretation|
|:---   |---|
|feature | Consistes mainly of feature commits|
|bugfix | Only corrects bugs|

Proces before merge is following

1) Make a merge/pull request
2) Inspect your own code first
3) Clean code and refresh the request
4) Get someonw else to check it, if not present check it yourself in 3 days.
5) Fix issues and prepare to rebase and merge, instrcutions below.

``` shell
git checkout feature-branch
git rebase master -i
git merge feature-branch --no-ff
```

Some of the practices may change in time.