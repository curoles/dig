$(H2 Other Means to Control Flow)

$(P
`if`, `while` and `for` might look like ultimate solution
for everything, but the matter is not that simple.
Imagine you have a conversation with someone who in one
sentence uses dozens of $(B if-then-while-once) and etc.,
very soon you get lost, because it is too hard to keep
track of too many conditions at once. We humans usually
deal with it by way of using simple sentences and partitioning
chunks of information. In programming it would correspond
to code with:
$(UL
$(LI limited number of nested $(B if-else) or nested loops;)
$(LI functionality partitioned into many separate functions;)
$(LI where each function does only one thing and its code is
not too long so a reader does not get lost.)
)

)

$(P
computational, x0
)

$(P
move decision point;
array key->val
function pointers,
class dispatch
)

$(P
compile time dispatch
)

$(P
ruby times ?
)
