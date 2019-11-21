Unix 
======

Unix uses shells to accept commands given by the user, there are quite a few different shells available. The most commonly used shells are SH(Bourne SHell) CSH(C SHell) and KSH(Korn SHell), most of the other shells you encounter will be variants of these shells and will share the same syntax, KSH is based on SH and so is BASH(Bourne again shell). TCSH(Extended C SHell) is based on CSH.

The various shells all have built in functions which allow for the creation of shell scripts, that is, the stringing together of shell commands and constructs to automate what can be automated in order to make life easier for the user.

With all these different shells available, what shell should we script in? That is debatable. For the purpose of this tutorial we will be using SH because it is practically guaranteed to be available on most Unix systems you will encounter or be supported by the SH based shells. Your default shell may not be SH. Fortunately we do not have to be using a specific shell in order to exploit its features because we can specify the shell we want to interpret our shell script within the script itself by including the following in the first line.
