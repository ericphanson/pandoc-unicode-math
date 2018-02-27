# pandoc-unicode-math

If you prefer Markdown to Latex because of its readability, then why not
improve the readability of math expressions as well? Just use the power of
Unicode!

## What does this filter do?

This [Pandoc] [filter] replaces Unicode math symbols and greek letters like ∀,
∈, →, λ, or Ω in math environments by equivalent Latex commands like
`\forall`, `\in`, `\rightarrow`, `\lambda`, or `\Omega`. That means you can
write expressions like these in Markdown and still get Latex's superior math
typesetting when converting to PDF:

    α → β ≡ ¬α ∨ β ≡ ¬(α ∧ ¬β)

    ∀ x ∈ \{ 2, 4, … \}, ∀ y ∈ ℕ : (x ⋅ y) mod 2 = 0

    ℕ ⊂ ℤ ⊂ ℝ

Now compare them to the same expressions written with Latex commands:

    \alpha \rightarrow \beta \equiv \neg \alpha \lor \beta \equiv \neg (\alpha \land \neg \beta)

    \forall x \in \{ 2, 4, \dots \}, \forall y \in \mathbb{N} : (x \cdot y) mod 2 = 0

    \mathbb{N} \subset \mathbb{Z} \subset \mathbb{R}

If you prefer the Unicode variant, this filter is for you!

A complete list of symbols that are replaced by this filter can be found in the
[`src/Main.hs`](src/Main.hs) file.

## Usage

 1. Write a Markdown document containing Unicode characters like the provided
    [example file](example.md).
 2. Invoke Pandoc to convert the Markdown document to PDF and apply the filter
    along the way:

        $ pandoc example.md --filter pandoc-unicode-math -o example.pdf

    (This command expects an executable binary `pandoc-unicode-math` in your
    [PATH].)

## But my keyboard has no "α" and "∃" keys!

This filter will not make *writing* math expressions easier. It only makes
*reading* them easier. How to input Unicode symbols depends on your editor. In
Vim, [digraphs] and the [characterize plugin] are very useful for working with
Unicode.

## Limitations

For more complex math containing fractions like `\frac{2}{3+5}` or lots of
subscripts and superscripts like `k_{n+1}^2` you still need raw Latex because
these things cannot be expressed by single Unicode characters. However,
Unicode symbols and Latex commands can be used together in the same
expression:

    ∃ x ∈ ℕ : \frac{x}{2} = 21

[Pandoc]: https://pandoc.org/
[filter]: https://pandoc.org/filters.html
[PATH]: https://en.wikipedia.org/wiki/PATH_(variable)
[digraphs]: http://vimdoc.sourceforge.net/htmldoc/digraph.html
[characterize plugin]: https://github.com/tpope/vim-characterize
