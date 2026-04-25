# Paper VII Review Passes (Updated Matrix + Fix Notes)

Date: 2026-04-24

This is an updated re-grade after:
- the Introduction restructure (more operational grounding + explicit signposts),
- the abstract lightening pass,
- the replica-frontier legend + `F_recv` lowering fix,
- the adversarial-transport citation anchoring,
- the GraphQL-spec citation,
- and assorted layout/figure cleanups.

## Matrix

Rows = sections of the document. Columns = review passes. Grades are `A` (best) to `F` (worst).

| Section (Top-Level) | 1. Formatting | 2. Correctness | 3. Style | 4. Voice | 5. Tone | 6. Citation | 7. Clarity |
|---|---:|---:|---:|---:|---:|---:|---:|
| 1. Introduction | A- | A- | A- | A- | A- | A- | A- |
| 2. Causal Lanes, Strands, and Braids | A- | A- | A- | A- | A | A- | A- |
| 3. The WARP Optic (incl. §3.1–§3.3) | A- | A- | A- | A- | A | A- | A- |
| 4. Tick, Braid, and Replica | A- | A- | A- | A- | A- | A- | A- |
| 5. Illustrative Examples | A | A- | A- | A | A | A- | A- |
| 6. Continuum and the Post‑Unix Horizon | A- | A- | A- | A- | A- | A- | A- |
| 7. Privacy, Provenance, and Revelation | A- | A- | A- | A- | A- | A- | A- |
| 8. Open Frontier Questions | A | A- | A- | A- | A | A | A- |
| 9. Conclusion | A | A- | A- | A | A | A | A- |
| Appendix A. Adversarial Transport (Sketch) | A- | A- | A- | A- | A | A- | A- |
| Appendix B. WARP Glossary | A- | A- | A- | A- | A | A | A- |
| References / Bibliography | A- | A- | A | A | A | A- | A |

## Notes (What Would Raise Remaining A- Cells To “Perfect A”)

No section is below `A-` in any pass. The remaining `A-` scores are “polish grade”, not structural risk.

The main remaining improvements that would plausibly lift multiple cells to straight `A` are:

1. **Make one float policy decision and enforce it.**
   - Right now the paper mixes `[t]` floats and `[H]` “pinned” figures. It works, but a consistent `\FloatBarrier` policy or “all worked-example figures are `[H]`” policy would make pagination more predictable and would remove the last formatting risk around Section 2.

2. **Tighten two clause-heavy paragraphs in §3.1–§3.2.**
   - The optic section is intentionally the densest; it now has a toy anchor and residual split, but 2–3 sentences could still be shortened for even faster first-pass parsing.

3. **Either cite or rephrase the last couple of “systems diagnosis” sentences.**
   - There are still one or two places where “ordinary systems…” style commentary could be read as empirical claims. They are fine as architectural contrast, but if you want maximum reviewer-proofing: cite a representative DS paper, or rewrite those lines as “A common engineering posture is…” without sounding sweeping.

4. **One more explicit link from Continuum → Paper VIII in §8.**
   - The handoff is already correct; if you want it to feel “inevitable”, add one crisp closing sentence that names the Paper VIII job in one clause.

5. **Bibliography completeness (optional).**
   - You’re already above-normal on DOIs/ISBNs. The only remaining “A+ bibliographic hygiene” work is adding ISBNs for the remaining classic books that lack them.

