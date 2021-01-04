#lang scribble/manual
@require[@for-label[raco-watch
                    racket/base]]

@title{raco-watch}
@author{Lîm Tsú-thuàn}

@defmodule[raco-watch]

A raco extension for watching file changes and execute command. Usage

@code{
raco watch -c "raco scribble xxx.scrbl" xxx.scrbl
}

Notice that @code{-c} is shorthand for @code{--command}.

You can give more than one file/directory. When nothing given, current directory is target.
