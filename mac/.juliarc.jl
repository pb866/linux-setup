let
  # program
  if !isempty(ARGS) && !isempty(first(ARGS))
    return
  end
  # command-line
  import OhMyREPL
  OhMyREPL.colorscheme!("BoxyMonokai256")
  println("REPL")
end
