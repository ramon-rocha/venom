# Venom #

Venom is a parser and source analysis library for the
[Cobra programming language](http://cobra-language.com).

It's currently in the early stages of development and
[much work remains](https://trello.com/b/dba3s63o/venom).

### Building ###

Use `xbuild` or `msbuild` to compile Venom.sln.

    cd /path/to/venom
    xbuild Venom.sln

Venom.dll will be in `bin/Debug`

But first, a custom version of the Cobra compiler is required to build Venom.
Apply `venom.patch` to the latest svn version of Cobra. That's version 3117
(post 0.9.6) at the time of this writing.

    svn patch venom.patch your/cobra/workspace

Then reinstall the patched version of Cobra.

    cd your/cobra/workspace
    cd Source
    bin/install-from-workspace


### Testing ###

    ./test.sh


### Using ###

You can't do much with Venom yet besides parse mostly error-free Cobra source
code to generate an abstract syntax tree.

You can examine the `CobraParser` and `CompilationUnit` classes to start
learning about the AST structure.  This is easier using MonoDevelop or Xamarin
Studio and the [Cobra Language Binding Addin](https://github.com/ramon-rocha/MonoDevelop.CobraBinding/)
(built from source using your Venom-patched Cobra compiler).
