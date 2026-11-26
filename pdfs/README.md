# 📄 PDFs dos Módulos - Instruções

Os arquivos desta pasta estêo em formato **Markdown (.md)** e precisam ser convertidos para **PDF**.

## 🔄 Como Converter para PDF:

### Opçêo 1: Pandoc (Linux/Mac/Windows)
```bash
# Instalar pandoc
sudo apt install pandoc texlive-xetex  # Ubuntu/Debian
brew install pandoc basictex           # Mac

# Converter
cd pdfs/
pandoc modulo-1-1.md -o modulo-1-1.pdf --pdf-engine=xelatex
pandoc modulo-1-2.md -o modulo-1-2.pdf --pdf-engine=xelatex
pandoc modulo-1-3.md -o modulo-1-3.pdf --pdf-engine=xelatex
pandoc modulo-1-4.md -o modulo-1-4.pdf --pdf-engine=xelatex
pandoc modulo-1-5.md -o modulo-1-5.pdf --pdf-engine=xelatex
```

### Opçêo 2: Typora (Mais fácil, interface gráfica)
1. Baixe Typora: https://typora.io/
2. Abra cada arquivo .md
3. File → Export → PDF
4. Salve na mesma pasta

### Opçêo 3: VSCode com extensêo
1. Instale extensêo "Markdown PDF" no VSCode
2. Abra arquivo .md
3. Ctrl+Shift+P → "Markdown PDF: Export (pdf)"

### Opçêo 4: Ferramentas Online
- https://www.markdowntopdf.com/
- https://md2pdf.netlify.app/
- Upload do .md e download do PDF

### Opçêo 5: Script Automático (se tiver pandoc)
```bash
#!/bin/bash
cd pdfs/
for file in *.md; do
    if [ "$file" != "README.md" ]; then
        pandoc "$file" -o "${file%.md}.pdf" --pdf-engine=xelatex
        echo "Convertido: $file → ${file%.md}.pdf"
    fi
done
echo "✅ Todos os PDFs criados!"
```

## 📦 Arquivos Disponíveis:

- `modulo-1-1.md` → `modulo-1-1.pdf` (Revoluçêo da IA)
- `modulo-1-2.md` → `modulo-1-2.pdf` (Ecossistema de Ferramentas)
- `modulo-1-3.md` → `modulo-1-3.pdf` (Prompt Engineering)
- `modulo-1-4.md` → `modulo-1-4.pdf` (Pensamento Crítico)
- `modulo-1-5.md` → `modulo-1-5.pdf` (Projeto Piloto 30 Dias)

## 🚀 Quick Start (Recomendado: Typora)

**A forma mais fácil é usar o Typora:**

1. Baixe grátis: https://typora.io/
2. Abra todos os 5 arquivos .md
3. Para cada um: File → Export → PDF
4. Pronto! PDFs criados em 2 minutos

---

**Nota:** Os arquivos .md já estêo completos e formatados. A conversêo para PDF é apenas para distribuiçêo final.
