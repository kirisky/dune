(** Represent a path component.

    A path component is just a string without a '/' character. *)

include module type of struct
  include Stdlib.Filename
end

(* TODO add invariants and make this abstract or private *)
type t = string

val split_extension : t -> string * string

val split_extension_after_dot : t -> string * string

type program_name_kind =
  | In_path
  | Relative_to_current_dir
  | Absolute

val analyze_program_name : t -> program_name_kind

val equal : t -> t -> bool

val compare : t -> t -> Ordering.t

module Set = String.Set
module Map = String.Map
