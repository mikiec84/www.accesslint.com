---
title: >
  New Checks Added: Valid <code>role</code> Values, Accessible Button
  Text, and More
date: 2018-02-03
tags: changes
---

We’re excited to announce additional checks that AccessLint now runs to help you
and your team prevent even more accessibility issues from reaching your
customers. The next time you open a Pull Request, AccessLint will review your
code to check that:

- Buttons have accessible text
- Values of the `lang` attribute on the `html` element are valid
- Attributes that start with `aria-` are [valid
  <abbr title="Accessible Rich Internet Applications">ARIA</abbr>
  attributes][aria-attributes]
- Values of the [ARIA `role` attribute][aria-roles] are valid

A common mishap made by those both familiar with and new to ARIA is accidental
misspelling of attribute names and values. Given the vast landscape of the ARIA
specification, this isn’t much of a surprise (is it `aria-role` or `role`? [^1]).
With AccessLint, you and your team can work fast and be confident that these
small blunders won’t slip in over time.

***

[Add AccessLint to your GitHub project][accesslint-marketplace] today! It’s free
for open source projects.

[aria-roles]: https://www.w3.org/TR/wai-aria-1.1/#usage_intro
[aria-attributes]: https://www.w3.org/TR/wai-aria-1.1/#introstates
[accesslint-marketplace]: https://github.com/marketplace/accesslint
[^1]: It’s `role` 😉
