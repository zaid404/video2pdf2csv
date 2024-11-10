# Video Table/Text Extraction Tool

This repository contains tools and scripts for extracting tables or text from YouTube videos. The extraction process involves multiple steps, including video download, screenshot capture, PDF generation, OCR processing, and table extraction.

## Workflow Overview

1. **Download the video** using [yt-dlp](https://github.com/yt-dlp/yt-dlp).
2. **Capture screenshots** at specified intervals using [FFmpeg](https://github.com/FFmpeg/FFmpeg).
3. **Combine screenshots into a PDF** file using [PyPDF2](https://github.com/talumbau/PyPDF2).
4. (Optional) **Perform OCR on the PDF** to extract text using [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF).
5. **Extract tables or text** from the OCR-processed PDF using [pytesseract](https://github.com/madmaze/pytesseract). However, for higher accuracy, it’s recommended to use Adobe Acrobat’s [PDF to Excel tool](https://www.adobe.com/id_id/acrobat/online/pdf-to-excel.html) for table extraction.

## Requirements

To use this tool, you'll need to have the following software and Python libraries installed:

- **[yt-dlp](https://github.com/yt-dlp/yt-dlp)**: Download videos from YouTube.
- **[FFmpeg](https://github.com/FFmpeg/FFmpeg)**: Capture screenshots from videos.
- **Python Libraries**:
  - **[PyPDF2](https://github.com/talumbau/PyPDF2)**: Combine images into a single PDF.
  - **[OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF)**: Perform OCR on PDFs to extract text.
  - **[pytesseract](https://github.com/madmaze/pytesseract)**: Extract text and tables from images or PDFs.


pip install PyPDF2 ocrmypdf pytesseract
