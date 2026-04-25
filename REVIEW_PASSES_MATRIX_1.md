# Paper VII Review Passes (Matrix + Fix Notes)

Date: 2026-04-24

## Matrix

Rows = sections of the document. Columns = review passes. Grades are `A` (best) to `F` (worst).

| Section (Top-Level) | 1. Formatting | 2. Correctness | 3. Style | 4. Voice | 5. Tone | 6. Citation | 7. Clarity |
|---|---:|---:|---:|---:|---:|---:|---:|
| 1. Introduction | A | B+ | A- | A- | A- | B+ | B+ |
| 2. Causal Lanes, Strands, and Braids | A- | A- | A- | A- | A | A- | A- |
| 3. The WARP Optic (incl. §3.1–§3.3) | A- | A- | A- | A- | A | A- | A- |
| 4. Tick, Braid, and Replica | A- | A- | A- | A- | A- | B+ | A- |
| 5. Illustrative Examples | A | A- | A- | A | A | A- | A- |
| 6. Continuum and the Post‑Unix Horizon | A- | A- | A- | A- | A- | A- | A- |
| 7. Privacy, Provenance, and Revelation | A- | A- | A- | A- | A- | A- | A- |
| 8. Open Frontier Questions | A | A- | A- | A- | A | A | A- |
| 9. Conclusion | A | A- | A- | A | A | A | A- |
| Appendix A. Adversarial Transport (Sketch) | A- | A- | A- | A- | A | A- | A- |
| Appendix B. WARP Glossary | A- | A- | A- | A- | A | A | A- |
| References / Bibliography | A- | A- | A | A | A | A- | A |

## Rationale + What Would Raise Each Below‑A‑ Cell To “Perfect”

### 1. Introduction (Correctness B+, Citation B+, Clarity B+)

Why not A-:
- It stacks several high-level claims early ("no privileged graph", closure over outputs, "distribution changes slice boundary") before the reader has operational footing.

To reach A:
- Add 2–3 "scope posture" hedges where the text is asserting a thesis vs reporting a result.
- Add one concrete forward pointer ("made precise in Definition X / Proposition Y / Theorem Z") after each load-bearing claim.

Citation note:
- Most of this is thesis and series framing.
- Avoid "industry diagnosis" sentences that read like facts unless softened or cited.

### 2. Causal Lanes, Strands, and Braids (Formatting B+, Style B+)

Why not A:
- Figure 1 + the “Specification note + Terminology summary” block is still a layout risk: we tuned it to behave, but LaTeX float placement can always surprise.

To reach A:
- If we want this bulletproof, make the noun-map figure non-floating (`[H]`) and adopt a consistent float-barrier policy at section boundaries.

### 3. The WARP Optic (Style B+, Clarity B+)

Why not A:
- It’s now operationally grounded, but still the densest section of the paper by definition.

To reach A:
- Tighten 2–3 of the longest sentences in §3.1–§3.2 and keep the “tiny worked instance” as the one anchor.

### 4. Tick, Braid, and Replica (Correctness B+, Citation B, Clarity B+)

Why not A (citation):
- There are still a few “distributed systems posture” sentences that could be either further softened or anchored by 1–2 more “representative” systems references.

### 6. Continuum and the Post‑Unix Horizon (Correctness B+, Style B+, Citation B, Clarity B+)

Why not A:
- The only remaining risk is readers misreading “GraphQL SDL” as an ontic “graph is primary” claim. The guard sentence is present; further tightening is possible if needed.

### 8. Open Frontier Questions (Style B+)

Why not A-:
- The list is good but mixes governance laws and engineering seams without grouping, and the intro sentences can read like promissory note language.

To reach A:
- Add one line that groups the bullets (governance laws vs engineering seams).
- Reorder the bullets into those clusters while keeping a single flat list.

### Appendix A. Adversarial Transport (Sketch) (Correctness B+, Citation C+, Clarity B+)

Why not A:
- This section is still explicitly labelled “Sketch,” so it is intentionally not fully formal.

To reach A:
- Add a 2–3 sentence distinction between “transport obligations” and “consensus protocol,” and give one crisp rule-of-thumb mapping failure modes to `Conflict` vs `Obstruction`.

### Appendix B. WARP Glossary (Formatting B+)

Why not A-:
- Table formatting has a few alignment/consistency issues and some very long meaning lines wrap unevenly.

To reach A:
- Normalise indentation and wrapping.
- Slightly widen the first column or shorten a few long "Meaning" sentences.

### References / Bibliography (Citation B+)

Why not A:
- Pure completeness polish: a couple of classic books could add ISBNs in the same consistently meticulous way as the rest of the list.
