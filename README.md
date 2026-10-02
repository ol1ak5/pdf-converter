# 📄 PDF Converter

A one-click macOS tool that turns a Markdown CV into a clean, print-ready A4 PDF.

## 🎯 The Problem

A CV is easiest to write and keep up to date as plain text, but it has to be sent as a polished PDF. Word processors make every edit a fight with the layout, and printing to PDF from a browser adds headers, footers and margins you can't turn off.

## 💡 The Solution

Write the CV in Markdown, right-click the file in Finder and choose **md2pdf**. A few seconds later the PDF sits next to the original, with the same layout every time.

## 🧠 How It Works

1. **Pandoc** converts the Markdown into an HTML page linked to [`style/cv.css`](style/cv.css).
2. **The stylesheet** sets the look: A4, Times New Roman, justified text, job dates aligned right. It falls back to the bundled Tinos font, which has the same metrics as Times New Roman, so line breaks and page count never change.
3. **Headless Google Chrome** prints the page to PDF without headers or footers and reveals the result in Finder.

The Markdown is expected to follow a simple shape: `# Name`, a headline paragraph, a contact paragraph, `## Section` headings, and `### Job title` followed by a `Location ... Dates` line.

## 🚀 Quick Start

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

## 🧩 Built With

| Stack | Used for |
|---|---|
| **Pandoc** | Converts Markdown into HTML |
| **CSS** | Defines the A4 CV layout |
| **Google Chrome (headless)** | Prints the HTML to PDF |
| **Automator** | Provides the Finder Quick Action |
| **Bash** | Ties the steps together |

## 📄 License

Copyright © 2026 Olga Aksenova.

The code in this repository is licensed under the **[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0)** – see [LICENSE](LICENSE) for the full text. The bundled Tinos font is also licensed under Apache 2.0.
