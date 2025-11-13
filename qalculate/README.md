# [![Qalculate icon][pkgIcon] Qalculate! Chocolatey Package][chocoPkgQalculate]

<!--
  SPDX-FileCopyrightText: 🄯 2025, Peter J. Mello <admin@petermello.net>

  SPDX-License-Identifier: CC0-1.0
-->

## The ultimate desktop calculator

⁠   ![Qalculate! keypad screenshot][screenshotKeypad]
   ![Qalculate! history screenshot][screenshotHistory]

## Description

Qalculate! is a multi-purpose cross-platform desktop calculator. It is simple to
use but provides power and versatility normally reserved for complicated math
packages, as well as useful tools for everyday needs—such as currency conversion
and percent calculation.

## Notable features

### General

- All common mathematical operations – performed on any combination of numbers,
  constants, functions, units, variables, matrices, vectors and time/dates:
  + Arithmetic
  + Bitwise
  + Element-wise
  + Equalities / inequalities
  + Logical
- Fault-tolerant and flexible input parsing with verbose error/warning messages
- Flexible expression entry with customizable completion, function/parameter
  hints and continuous on-the-fly evaluation of parsed expression
- History list with comment support, individual entry protection, search and use
  of previous results in new expressions
- Arbitrary precision with both rational and floating point numbers
- Complex and infinite numbers
- Both exact and approximate output: `√32 = 4 × √2 ≈ 5.657`
- Simple and mixed fractions: `4 / 6 × 2 = 1.333… = 4/3 = 1⅓`
- All common number bases, as well as negative and non-integer radices, Roman
  numerals, etc.
- Reverse Polish Notation (RPN) input mode
- Function plotting (separate installation of Gnuplot required; available as
  Chocolatey package [gnuplot][chocoPkgGnuplot]
- Two user-friendly graphical interfaces (your choice of GTK+- or Qt-based)
- Powerful command line interface with its own intuitively parsed REPL

### Symbolic calculations, integrals and equations

- Factorization and simplification
- Differentiation and integration
- Propagation of uncertainty and interval arithmetic
- Customizable assumptions: `㏑(2𝑥) where 𝑥 &gt; 0 = ㏑(2) + ㏑(𝑥)`

### Functions

- Over 400 flexible and diverse functions used in:
  + Trigonometry
  + Exponents and logarithms
  + Combinatorics
  + Geometry
  + Calculus
  + Statistics
  + Finance
  + Times and dates

### Unit calculations and conversion

- Over 400 diverse units with all standard decimal and binary prefixes
- All SI, Imperial, CGS, atomic and natural units
- Automatic or explicit conversion: `1ft + 1yd + 1m = 2.2192m, 5kg × m/s² = 5N,
  5m/s to mph = 11.18mph`
- Currency conversion with daily updated exchange rates

### Variables and constants

- All common basic constants, including `π`, `e`, `φ`, etc.
- Fundamental physical constants with 2022 CODATA values, including standard
  uncertainty and optional units
- Data sets with objects and associated properties, e.g. chemical elements

## Conformance

[![REUSE v3.3 Compliant][reuseCompliantBadge]][reuseSpecification] This package
conforms to the [FSFE REUSE Specification, version 3.3][reuseSpecification].

[![Valid SVG 1.1][validSvgBadge]][w3cValidator]

## Links

- [Qalculate! official web site][qalculateWebSite]

[chocoPkgGnuplot]: https://community.chocolatey.org/packages/gnuplot
[chocoPkgQalculate]: https://community.chocolatey.org/packages/qalculate
[pkgIcon]: ./icon/qalculate.svg "Qalculate!"
[qalculateWebSite]: https://qalculate.github.io/ "Qalculate! Official Home Page"
[reuseCompliantBadge]: https://img.shields.io/badge/REUSE-compliant-brightgreen?logo=spdx&logoColor=4398cc&logoSize=auto&cacheSeconds=7200
[reuseSpecification]: https://reuse.software/ "Free Software Foundation Europe REUSE Software Specification"
[screenshotHistory]: ./screenshots/qalculate-history.png "Qalculate! GTK+ GUI history panel"
[screenshotKeypad]: ./screenshots/qalculate-keypad.png "Qalculate! GTK+ GUI keypad panel"
[validSvgBadge]: https://www.w3.org/Icons/valid-svg11
[w3cValidator]: https://validator.w3.org/check?uri=referer
