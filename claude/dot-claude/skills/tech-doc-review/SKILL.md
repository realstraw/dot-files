---
name: tech-doc-review
description: Review a technical design document against a quality checklist. Use when the user asks to review a technical doc, check doc quality, or prepare a doc for publishing.
---

Review the specified technical document against each item in the checklist below. For each category, report which items pass and which fail with a brief explanation. Read the full document first, then evaluate systematically.

## Structure

- [ ] Title communicates the core idea to someone with no context
- [ ] Opening paragraph motivates the problem before introducing the solution
- [ ] Scope is clear -- the reader knows what the doc covers and what it doesn't
- [ ] Each section has a clear purpose -- no section exists just to fill space
- [ ] Main narrative flows uninterrupted (design, how it works, what's next)
- [ ] Supplementary material (FAQ, references) comes after the narrative
- [ ] Figures appear in the section they support, not grouped elsewhere

## Clarity

- [ ] The intended audience is clear, and the level of detail matches
- [ ] Key terms are defined before they are used
- [ ] Each concept is introduced once, in one place -- no scattered definitions
- [ ] Input/output contracts are explicit (what goes in, what comes out)
- [ ] Design decisions are stated, not implied -- reader shouldn't have to guess why
- [ ] Examples are concrete and consistent (same scenario throughout)
- [ ] Examples (code, diagrams, tables) match what the prose describes

## Conciseness

- [ ] No sentence restates what a previous sentence already said
- [ ] No trailing summaries that repeat what the reader just read

## Consistency

- [ ] Same term for the same concept throughout (not "subscribe" in one place, "receive" in another)
- [ ] Verb tenses are parallel in lists and parallel constructions
- [ ] List items follow the same grammatical pattern (all "X are..." or all "The X is...")
- [ ] Register is uniform -- no informal words in otherwise formal prose
- [ ] Figures match the text (if the text says three inputs, the figure shows three)

## Figures

- [ ] Each figure has a caption
- [ ] Every element in the figure is mentioned in the text
- [ ] The text doesn't describe anything the figure contradicts
- [ ] Figures are updated when the design changes

## Completeness

- [ ] All components of the design are described (not just the obvious ones)
- [ ] Concepts that serve multiple roles are explicitly called out
- [ ] The doc compares with prior art or existing approaches where relevant
- [ ] The doc acknowledges known limitations or open questions (FAQ or inline)
- [ ] References exist for all external claims, tools, and frameworks mentioned
- [ ] Cross-references between related docs are present and correct

## Before Publishing

- [ ] Read the whole doc assuming the reader has no prior context
- [ ] Check that all links resolve
- [ ] Figures have exported images that match the current source files
