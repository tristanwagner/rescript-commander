module Program = {
  type t

  module Option = {
    type t
    external toString: option<t> => string = "%identity"
    external toInt: option<t> => int = "%identity"
    external toBool: option<t> => bool = "%identity"
  }

  @module("commander") @new external make: unit => t = "Command"

  @send external name: (t, string) => t = "name"
  @send external description: (t, string) => t = "description"
  @send external version: (t, string) => t = "version"
  @send @variadic external option: (t, array<string>) => t = "option"
  @send external parse: t => unit = "parse"
  @send external command: (t, string) => t = "command"
  @send @variadic external argument: (t, array<string>) => t = "argument"
  @send external action: (t, ('a, Js.Dict.t<Option.t>) => unit) => t = "action"
}

@module("commander") @val external program: Program.t = "program"
