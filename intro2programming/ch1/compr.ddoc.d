$(H2 Computer Program)

$(P
Programmers write programs using computer languages.
Since we are human, it is only natural that a program
written in a programming language does not look that much
different from a text written in English language.
)

$(P
The reasons we can't use English language for programming is
somewhat similar to reasons why we do not use English in Algebra:
$(UL
$(LI
It is too verbose (programmers would say: "noisy"), it was made
to be spoken out and heard by human ear,
not for computers to understand.
)
$(LI
It is too general purpose language; what can be written as a simple
algebraic equation would take several paragraphs of English text.
)
$(LI
The same thing in English can be written in many ways.
)
$(LI
Most important, it allows for ambiguity, that is different readers
might read and interpret the same English text differently $(LPAREN)might
be good for lawyers and philosophers, but not programmers$(RPAREN)
)
)
)

$(P
A text written in English language has:
$(UL
$(LI words)
$(LI numbers, for dates for example)
$(LI punctuation symbols, for example '.', ',', '!', ':')
)
)

$(P
In Algebra we use:
$(UL
$(LI numbers)
$(LI words, usually as short as one letter, to give symbol a name,
for example 'x')
$(LI special symbols for operations, for example '=','+')
)
)

$(P
When someone invents a programming language he usually:
$(OL
$(LI
Starts with English and adds to it mathematical symbols.
)
$(LI
Figures out a dozen or so words to be used as language keywords,
other words are not allowed to be used except for user defined names.
)
$(LI
Simplifies grammar, that is describes only those few
combinations of keywords and symbols that are allowed.
)
$(LI
Defines what each grammatical structure exactly means.
easy tasks because the grammar is simplified and the
vocabulary is very short.
)
)
)

$(P
Let us consider following piece of D code:
---
int x = 7;
---
In this line of code we have:
$(UL
$(LI
`x` is a word we use to name our variable.
)
$(LI
`int` is D language keyword that we use to tell that we want `x` to
be an integer number and nothing else.
)
$(LI
`7` is just number 7.
)
$(LI
`=` means equal as in Algebra.
)
$(LI
`;` means end-of-statement, it is equvuvalent of '.' at the end of
English sentence.
)
)
)

$(P
In English this line of code could be written as:
"Let us have variable called 'x' that is some integral number; we want
'x' to be equal to 7, for now."
The point is that it is much easier to translate "int x = 7" into the
native computer code than the English sentence.
)

$(P
Let us see what else D syntax has.
)
