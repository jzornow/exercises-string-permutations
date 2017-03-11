# The Problem:

> ### Write a recursive function for generating all permutations of an input string. Return them as a set.
> Don't worry about time or space complexity—if we wanted efficiency we'd write an iterative version.
>
> To start, assume every character in the input string is unique.
>
> Your function can have loops—it just needs to also be recursive.

# My Solution

I ended up building an algorith that's a bit different from their prescribed
solution, but still follows the same philosophy:

#### Pick of letters one-by-one, find the permutation set of the string without that letter, and then append that letter to each of the permutations produced.

Works pretty well. You can try it yourself by cloning this repo and running
`./string_permutator STRINGS TO PERMUTE` from the project root.

# Example
```shell
$ ./string_permutator cat dog fish

Found 6 permutations for cat:
 - cat
 - cta
 - act
 - atc
 - tca
 - tac

Found 6 permutations for dog:
 - dog
 - dgo
 - odg
 - ogd
 - gdo
 - god

Found 24 permutations for fish:
 - fish
 - fihs
 - fsih
 - fshi
 - fhis
 - fhsi
 - ifsh
 - ifhs
 - isfh
 - ishf
 - ihfs
 - ihsf
 - sfih
 - sfhi
 - sifh
 - sihf
 - shfi
 - shif
 - hfis
 - hfsi
 - hifs
 - hisf
 - hsfi
 - hsif
```
