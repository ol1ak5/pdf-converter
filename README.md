# PDF Converter

A one-click macOS tool that turns a Markdown CV into a clean, print-ready A4 PDF.

## How It Works

1. You write your CV in **Markdown**.
2. **Pandoc** converts the Markdown into an HTML page linked to [`style/cv.css`](style/cv.css).
3. **The stylesheet** sets the look. To change it, edit [style/cv.css](style/cv.css).
4. **Headless Google Chrome** prints the page to PDF without headers or footers and reveals the result in Finder.

## Quick Start

Requirements: macOS, [Pandoc](https://pandoc.org) (`brew install pandoc`) and Google Chrome at `/Applications/Google Chrome.app`.

```bash
git clone https://github.com/ol1ak5/pdf-converter.git ~/ai-projects/pdf-converter
~/ai-projects/pdf-converter/install.sh
```

`install.sh` adds the **md2pdf** Quick Action to Finder. Right-click any `.md` file → **Quick Actions → md2pdf**. The Quick Action calls `~/ai-projects/pdf-converter/md2pdf.sh`, so the repo has to live at that path.

From the terminal:

```bash
./md2pdf.sh cv.md      # writes cv.pdf next to cv.md
./md2pdf.sh *.md       # several files at once
```

## License

Copyright © 2026 Olga Aksenova.

The code in this repository is licensed under the **[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0)** – see [LICENSE](LICENSE) for the full text. The bundled Tinos font is also licensed under Apache 2.0.
