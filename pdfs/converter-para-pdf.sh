#!/bin/bash
# Script para converter todos os módulos Markdown para PDF

echo "🔄 Convertendo módulos Markdown para PDF..."
echo ""

# Verificar se pandoc está instalado
if ! command -v pandoc &> /dev/null; then
    echo "❌ Pandoc nêo está instalado!"
    echo ""
    echo "📥 Para instalar:"
    echo "  Ubuntu/Debian: sudo apt install pandoc texlive-xetex"
    echo "  Mac: brew install pandoc basictex"
    echo "  Windows: choco install pandoc miktex"
    echo ""
    echo "Ou use Typora (mais fácil): https://typora.io/"
    exit 1
fi

# Entrar na pasta pdfs
cd "$(dirname "$0")"

# Converter cada módulo
for i in {1..5}; do
    input="modulo-1-${i}.md"
    output="modulo-1-${i}.pdf"

    if [ -f "$input" ]; then
        echo "📄 Convertendo: $input → $output"
        pandoc "$input" -o "$output" \
            --pdf-engine=xelatex \
            --variable=geometry:margin=2cm \
            --variable=fontsize=11pt \
            --toc \
            --toc-depth=2

        if [ $? -eq 0 ]; then
            echo "   ✅ Sucesso!"
        else
            echo "   ❌ Erro ao converter $input"
        fi
    else
        echo "⚠️  Arquivo nêo encontrado: $input"
    fi
    echo ""
done

echo "🎉 Conversêo concluída!"
echo ""
echo "📦 PDFs criados:"
ls -lh modulo-1-*.pdf 2>/dev/null || echo "   Nenhum PDF foi criado (verifique erros acima)"
