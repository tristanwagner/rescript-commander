open Commander
open Program

program
  ->description("Split a string into substrings and display as an array")
  ->argument(["<string>", "string to split"])
  ->option(["--first", "display just the first substring"])
  ->option(["-s, --separator <char>", "separator character", ","])
  ->action((arg: string, options) => {
    let sep = options->Js.Dict.get("separator")->Program.Option.toString
    Console.log(sep->Js.String.split(arg))
  })
  ->parse
  ->ignore
