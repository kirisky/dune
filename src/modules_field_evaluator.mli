open! Stdune

val eval
  :  modules:(Module.Source.t Module.Name.Map.t)
  -> buildable:Dune_file.Buildable.t
  -> virtual_modules:Ordered_set_lang.t option
  -> private_modules:Ordered_set_lang.t
  -> Module.Name_map.t
