(**
   The Yojson library provides several types for representing JSON values, with different use cases.

   - The {{!basic}Basic} JSON type,
   - The {{!safe}Safe} JSON type, a superset of JSON with safer support for integers,
   - The {{!raw}Raw} JSON type, a superset of JSON, safer but less integrated with OCaml types.

Each of these different types have their own module.

The JSON spec doesn't allow leading zeros in literal numbers. It is useful to be able to read JSON values produced externally that might have leading zeroes (and some JSON parsers do). Module {Anynum} accepts JSON values that contain leading zeroes in literal numbers. It has submodules {Basic}, {Safe}, and {Raw}.

*)

(** {1 Shared types and functions} *)

include module type of Common
include module type of T

(** {1:basic Basic JSON tree type} *)

module Basic = Basic

(** {1:safe Multipurpose JSON tree type} *)

module Safe = Safe

(** {1 JSON tree type with literal int/float/string leaves} *)

module Raw = Raw

(** {1:raw Supertype of all JSON tree types} *)

module Anynum = Anynum
