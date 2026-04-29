---
name: tech-doc-review
description: Review a technical design document against a quality checklist. Use when the user asks to review a technical doc, check doc quality, or prepare a doc for publishing.
---

Review the specified technical document against each item in the checklist below. For each category, report which items pass and which fail with a brief explanation. Read the full document first, then evaluate systematically.

## Structure

- [ ] Opening motivates the problem before introducing the solution
- [ ] Scope is explicit -- the reader knows what the doc covers and what it doesn't
- [ ] Main narrative flows uninterrupted; supplementary material (FAQ, references) comes after
- [ ] Figures appear in the section they support, not grouped elsewhere

## Clarity

- [ ] Key terms are defined before they are used, each in one place
- [ ] Input/output contracts are explicit (what goes in, what comes out)
- [ ] Design decisions are stated, not implied -- the reader shouldn't have to guess why
- [ ] Examples are concrete, consistent (same scenario throughout), and match the prose

## Consistency

- [ ] Same term for the same concept throughout
- [ ] Figures match the text -- no contradictions between what the diagram shows and what the prose describes
- [ ] No sentence restates what a previous sentence already said

## Completeness

- [ ] All components of the design are described (not just the obvious ones)
- [ ] The doc compares with prior art or existing approaches where relevant
- [ ] The doc acknowledges known limitations or open questions
- [ ] References exist for external claims, and cross-references between related docs are present
