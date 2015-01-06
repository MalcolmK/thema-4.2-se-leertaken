# `wkhtmltopdf` feature tests

This test document is used to test the features of [wkhtmltopdf](http://wkhtmltopdf.org/) and verify that this library is a solid candidate for [Documark](https://github.com/mauvm/documark).

## Installation

1. Install [wkhtmltopdf](http://wkhtmltopdf.org/downloads.html) (preferably 32-bit v0.12.2+).
2. Run:

        $ npm install
        $ grunt compile

3. Done! Now run `$ open Document.pdf` to see the result.

## Checklist

- [x] Compilation process
- [x] Page breaks
- [x] Links
- [x] Bold text
- [x] Italic text
- [x] Underlined text
- [x] Page headers
- [x] Page footers
- [x] Page numbers
- [x] Chapter title in footer
- [x] Internal images
- [x] External images
	- Images over HTTPS raise an error: `Exit with code 1 due to network error: SslHandshakeFailedError`
- [x] Markdown support
- [x] Combining separate chapter files
- [x] Automated TOC
- [x] Tables
- [ ] Figures and captions
- [ ] Sources (on page or in separate chapter)
- [ ] References to chapters, figures, and sources
- [x] Inline code blocks
- [ ] Formatted code blocks
	- Also see https://code.google.com/p/google-code-prettify/
- [x] MathJax
- [ ] Proper document styling
	- Typography
	- Something along the lines of [this template](http://www.latextemplates.com/template/short-sectioned-assignment)
- [ ] Configuration through elements
	- titlepage
	- tableofcontents
	- header
	- footer
- [ ] Per page wkhtmltopdf configuration
	- page
- [ ] Portrait and landscape mode for pages
	- page.landscape
