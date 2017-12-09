module Main where

import Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter unicodeToLatex

unicodeToLatex :: Inline -> Inline
unicodeToLatex (Math t e) = Math t (concatMap symbols e)
unicodeToLatex x          = x

symbols :: Char -> String
symbols '¬' = "\\neg"
symbols '±' = "\\pm"
symbols '×' = "\\times"
symbols '÷' = "\\div"
symbols '…' = "\\dots"
symbols '←' = "\\leftarrow"
symbols '↑' = "\\uparrow"
symbols '→' = "\\rightarrow"
symbols '↓' = "\\downarrow"
symbols '↔' = "\\leftrightarrow"
symbols '⇒' = "\\Rightarrow"
symbols '⇔' = "\\Leftrightarrow"
symbols '∀' = "\\forall"
symbols '∃' = "\\exists"
symbols '∅' = "\\emptyset"
symbols '∈' = "\\in"
symbols '∉' = "\\notin"
symbols '∋' = "\\ni"
symbols '∎' = "\\blacksquare"
symbols '∑' = "\\sum"
symbols '∓' = "\\mp"
symbols '∗' = "\\ast"
symbols '∘' = "\\circ"
symbols '∙' = "\\bullet"
symbols '∝' = "\\propto"
symbols '∞' = "\\infty"
symbols '∥' = "\\parallel"
symbols '∧' = "\\land"
symbols '∨' = "\\lor"
symbols '∩' = "\\cap"
symbols '∪' = "\\cup"
symbols '∴' = "\\therefore"
symbols '∵' = "\\because"
symbols '≠' = "\\neq"
symbols '≡' = "\\equiv"
symbols '≤' = "\\leq"
symbols '≥' = "\\geq"
symbols '⊂' = "\\subset"
symbols '⊃' = "\\supset"
symbols '⊆' = "\\subseteq"
symbols '⊇' = "\\supseteq"
symbols '⊢' = "\\vdash"
symbols '⊤' = "\\top"
symbols '⊥' = "\\bot"
symbols '⊨' = "\\vDash"
symbols '⋅' = "\\cdot"
symbols '⋮' = "\\vdots"
symbols '⋯' = "\\cdots"
symbols  s  = [s]
