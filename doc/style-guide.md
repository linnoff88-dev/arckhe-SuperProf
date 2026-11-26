# 🎨 FEP - Style Guide & Design System

> **Guia de Estilo e Sistema de Design do projeto FEP (Fundamentos e Engenharia de Prompt)**

---

## 📋 Índice

1. [Visêo Geral](#visêo-geral)
2. [Identidade Visual](#identidade-visual)
3. [Design Tokens](#design-tokens)
4. [Tipografia](#tipografia)
5. [Cores](#cores)
6. [Espaçamento e Grid](#espaçamento-e-grid)
7. [Componentes](#componentes)
8. [Animações e Transições](#animações-e-transições)
9. [Responsividade](#responsividade)
10. [Acessibilidade](#acessibilidade)

---

## 🎯 Visêo Geral

O FEP utiliza um design moderno, limpo e acessível, focado na experiência do usuário. O sistema de design foi construído com base em **três níveis de aprendizado** que possuem identidades visuais distintas:

- 🌟 **Iniciante** - Verde (Emerald)
- ⚡ **Técnico** - Azul (Blue)
- 👑 **Masterclass** - Roxo (Purple)

### Princípios de Design

1. **Clareza**: Interface limpa e fácil de navegar
2. **Progressêo Visual**: Cada nível tem sua própria identidade
3. **Acessibilidade**: WCAG 2.1 AA compliant
4. **Performance**: Animações suaves e carregamento otimizado
5. **Responsivo**: Mobile-first design

---

## 🎨 Identidade Visual

### Logo e Marca

- **Nome**: FEP
- **Fonte do Logo**: Inter (Bold, 700)
- **Cor Principal**: Blue 600 (#3B82F6)
- **Tagline**: "Engenharia de Prompt"

### Personalidade da Marca

- **Tom**: Profissional, educacional, acessível
- **Estilo**: Moderno, minimalista, tecnológico
- **Emoçêo**: Confiança, clareza, progresso

---

## 🎪 Design Tokens

Os design tokens sêo as variáveis fundamentais que definem o sistema de design:

```css
:root {
  /* Cores dos Níveis */
  --color-iniciante: #10B981;
  --color-tecnico: #3B82F6;
  --color-masterclass: #8B5CF6;

  /* Espaçamento */
  --spacing-unit: 1rem;

  /* Border Radius */
  --border-radius: 0.75rem;

  /* Shadows */
  --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
  --shadow-md: 0 4px 6px rgba(0,0,0,0.1);
  --shadow-lg: 0 10px 15px rgba(0,0,0,0.1);
  --shadow-xl: 0 20px 25px rgba(0,0,0,0.15);
}
```

---

## 📝 Tipografia

### Família Tipográfica

**Inter** - Fonte principal para todo o site

- **Provider**: Google Fonts
- **Pesos utilizados**: 400 (Regular), 500 (Medium), 600 (Semibold), 700 (Bold)
- **Link**: `https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap`

### Hierarquia Tipográfica

#### Desktop

| Elemento | Tamanho | Peso | Uso |
|----------|---------|------|-----|
| H1 (Hero) | 4rem (64px) | 700 | Títulos principais na hero section |
| H2 | 2.5rem (40px) | 700 | Títulos de seçêo |
| H3 | 1.875rem (30px) | 700 | Títulos de cards |
| H4 | 1.5rem (24px) | 600 | Sub-títulos |
| Body Large | 1.25rem (20px) | 400 | Texto de destaque |
| Body | 1rem (16px) | 400 | Texto padrêo |
| Small | 0.875rem (14px) | 400 | Labels, badges |

#### Mobile (< 640px)

| Elemento | Tamanho | Peso |
|----------|---------|------|
| H1 | 2rem (32px) | 700 |
| H2 | 1.75rem (28px) | 700 |
| H3 | 1.5rem (24px) | 700 |

### Propriedades de Texto

```css
body {
  font-family: 'Inter', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  line-height: 1.5;
}
```

### Tipografia em Conteúdo Markdown

Para conteúdo de módulos renderizado via Markdown:

```css
/* Headings */
h1 { font-size: 2rem; font-weight: 700; margin-top: 2rem; }
h2 { font-size: 1.5rem; font-weight: 700; margin-top: 2rem; }
h3 { font-size: 1.25rem; font-weight: 600; margin-top: 1.5rem; }
h4 { font-size: 1.1rem; font-weight: 600; margin-top: 1rem; }

/* Parágrafos */
p { line-height: 1.7; color: #4b5563; margin-bottom: 1rem; }

/* Listas */
ul, ol { padding-left: 1.5rem; margin-bottom: 1rem; }
li { line-height: 1.6; margin-bottom: 0.5rem; }

/* Code */
code {
  background-color: #f3f4f6;
  padding: 0.2rem 0.4rem;
  border-radius: 0.25rem;
  font-family: 'Courier New', monospace;
  font-size: 0.9em;
}

pre code { background: none; padding: 0; }
```

---

## 🎨 Cores

### Paleta Principal

#### Cores dos Níveis

| Nível | Cor | Hex | RGB | Uso |
|-------|-----|-----|-----|-----|
| **Iniciante** | Emerald 500 | `#10B981` | `rgb(16, 185, 129)` | Cards, badges, highlights do nível iniciante |
| **Técnico** | Blue 500 | `#3B82F6` | `rgb(59, 130, 246)` | Cards, badges, highlights do nível técnico |
| **Masterclass** | Purple 500 | `#8B5CF6` | `rgb(139, 92, 246)` | Cards, badges, highlights do nível masterclass |

#### Cores de Suporte

| Cor | Nome | Hex | Uso |
|-----|------|-----|-----|
| Blue 600 | Primary | `#3B82F6` | Botões primários, links, marca |
| Blue 700 | Primary Dark | `#2563EB` | Hover states |
| Indigo 500 | Accent | `#6366F1` | Filtros ativos, destaques |
| Indigo 600 | Accent Dark | `#4F46E5` | Hover de filtros |

#### Escala de Cinzas

| Cor | Nome | Hex | Uso |
|-----|------|-----|-----|
| Gray 50 | Background | `#F9FAFB` | Fundos de seçêo |
| Gray 100 | Background Alt | `#F3F4F6` | Cards alternativos, code blocks |
| Gray 200 | Border Light | `#E5E7EB` | Bordas sutis |
| Gray 300 | Border | `#D1D5DB` | Bordas padrêo |
| Gray 400 | Text Disabled | `#9CA3AF` | Texto desabilitado |
| Gray 600 | Text Secondary | `#6B7280` | Texto secundário |
| Gray 700 | Text Primary | `#374151` | Texto principal |
| Gray 900 | Text Heading | `#1F2937` | Títulos, texto forte |

### Gradientes

#### Hero Section

```css
background: linear-gradient(to bottom right, #3B82F6, #2563EB, #8B5CF6);
/* from-blue-600 via-blue-700 to-purple-700 */
```

#### Progress Bar

```css
background: linear-gradient(90deg, #3B82F6, #8B5CF6);
/* Azul para Roxo */
```

### Fundos dos Cards de Nível

```css
/* Iniciante */
background: linear-gradient(to bottom right, #ECFDF5, #FFFFFF);
/* from-emerald-50 to-white */

/* Técnico */
background: linear-gradient(to bottom right, #EFF6FF, #FFFFFF);
/* from-blue-50 to-white */

/* Masterclass */
background: linear-gradient(to bottom right, #FAF5FF, #FFFFFF);
/* from-purple-50 to-white */
```

### Estados de Interaçêo

| Estado | Aplicaçêo |
|--------|-----------|
| **Hover** | Escurecer 1 tom (ex: Blue 500 → Blue 600) |
| **Active** | `transform: scale(0.98)` |
| **Focus** | `outline: 2px solid #3B82F6; outline-offset: 2px` |
| **Disabled** | `opacity: 0.6; cursor: not-allowed` |

---

## 📏 Espaçamento e Grid

### Sistema de Espaçamento

Baseado em múltiplos de **1rem (16px)**:

| Token | Valor | Pixels | Uso |
|-------|-------|--------|-----|
| `spacing-xs` | 0.25rem | 4px | Espaçamentos internos mínimos |
| `spacing-sm` | 0.5rem | 8px | Gaps pequenos |
| `spacing-md` | 1rem | 16px | Espaçamento padrêo |
| `spacing-lg` | 1.5rem | 24px | Espaçamentos entre elementos |
| `spacing-xl` | 2rem | 32px | Espaçamentos entre seções |
| `spacing-2xl` | 3rem | 48px | Padding de seções |
| `spacing-3xl` | 4rem | 64px | Espaçamentos grandes |

### Grid System

**Framework**: Tailwind CSS Grid

```css
/* Container padrêo */
.container {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 1rem;
}

/* Grid responsivo - 3 colunas */
.grid-cols-1 { /* Mobile */ }
.md:grid-cols-3 { /* Tablets e Desktop: 3 colunas */ }

/* Gaps */
gap-8 /* 2rem - 32px */
```

### Breakpoints

| Nome | Min Width | Uso |
|------|-----------|-----|
| `sm` | 640px | Smartphones landscape |
| `md` | 768px | Tablets |
| `lg` | 1024px | Desktop |
| `xl` | 1280px | Large desktop |

---

## 🧩 Componentes

### 1. Navegaçêo (Navigation)

#### Desktop Navigation

```html
<nav class="sticky top-0 z-50 bg-white shadow-sm">
  <!-- Container: max-width, padding horizontal -->
  <!-- Logo: Blue 600, Inter Bold -->
  <!-- Links: Gray 700, hover: Blue 600 -->
</nav>
```

**Propriedades**:
- Posiçêo: `sticky top-0`
- Z-index: `50`
- Background: Branco
- Shadow: `shadow-sm`
- Padding: `py-4`

#### Mobile Navigation

- Hamburger menu: 3 linhas horizontais
- Menu expansível com animaçêo fade
- Links em lista vertical

---

### 2. Hero Section

```html
<section class="bg-gradient-to-br from-blue-600 via-blue-700 to-purple-700">
  <!-- Texto branco -->
  <!-- Título: 4rem (desktop), 2rem (mobile) -->
  <!-- CTA: Botêo branco com texto azul -->
</section>
```

**Propriedades**:
- Gradiente: Blue 600 → Blue 700 → Purple 700
- Texto: Branco
- Padding: `py-20` (5rem vertical)
- Alinhamento: Centro

---

### 3. Level Cards (Cards de Nível)

Cards principais para Iniciante, Técnico e Masterclass

**Estrutura**:
```
[Emoji]
[Título]
[Badge de horas]
[Descriçêo]
[Lista de tópicos]
[Botêo CTA]
```

**Variantes**:

#### Iniciante (Emerald)
- Gradiente: `from-emerald-50 to-white`
- Borda: `border-2 border-emerald-200`
- Hover: `border-emerald-400`
- Botêo: `bg-emerald-500 hover:bg-emerald-600`

#### Técnico (Blue)
- Gradiente: `from-blue-50 to-white`
- Borda: `border-2 border-blue-200`
- Hover: `border-blue-400`
- Botêo: `bg-blue-500 hover:bg-blue-600`

#### Masterclass (Purple)
- Gradiente: `from-purple-50 to-white`
- Borda: `border-2 border-purple-200`
- Hover: `border-purple-400`
- Botêo: `bg-purple-500 hover:bg-purple-600`

**Efeitos**:
- Hover: `transform: translateY(-4px)` + `shadow-xl`
- Transition: `0.3s cubic-bezier(0.4, 0, 0.2, 1)`
- Border radius: `rounded-2xl` (1rem)

---

### 4. Module Cards (Cards de Módulo)

Cards menores que representam módulos individuais

**Estrutura**:
```
[Badge de nível]
[Título do módulo]
[Descriçêo]
[Botões: Modal | Página]
```

**Propriedades**:
- Background: Branco
- Border: `border-2` (cor varia por nível)
- Shadow: `shadow-md`
- Hover: `translateY(-4px)` + `shadow-lg`
- Padding: `p-6`
- Border radius: `rounded-xl`

---

### 5. Botões (Buttons)

#### Primário

```css
.btn-primary {
  background-color: #3B82F6;
  color: white;
  padding: 1rem 2rem;
  border-radius: 0.5rem;
  font-weight: 700;
  transition: all 0.2s;
}

.btn-primary:hover {
  background-color: #2563EB;
  transform: scale(1.05);
}

.btn-primary:active {
  transform: scale(0.98);
}
```

#### Secundário

```css
.btn-secondary {
  background-color: transparent;
  color: #3B82F6;
  border: 2px solid #3B82F6;
  padding: 1rem 2rem;
  border-radius: 0.5rem;
  font-weight: 600;
  transition: all 0.2s;
}

.btn-secondary:hover {
  background-color: #EFF6FF;
}
```

#### Content Buttons (Modal/Página)

**Botêo Modal**:
- Background: Blue 500
- Ícone: 📖
- Texto: "Ver em Modal"

**Botêo Página**:
- Background: Transparent
- Border: Blue 500
- Ícone: 📄
- Texto: "Abrir Página"

---

### 6. Badges

```css
.badge {
  display: inline-block;
  padding: 0.25rem 1rem;
  border-radius: 9999px; /* Pill shape */
  font-size: 0.875rem;
  font-weight: 600;
  color: white;
}

.badge-iniciante { background-color: #10B981; }
.badge-tecnico { background-color: #3B82F6; }
.badge-masterclass { background-color: #8B5CF6; }
```

---

### 7. Breadcrumbs

```html
<nav class="breadcrumb">
  <a href="/">Início</a>
  <span class="breadcrumb-separator">/</span>
  <span>Página Atual</span>
</nav>
```

**Propriedades**:
- Tamanho: `0.875rem` (14px)
- Cor: Gray 600
- Links: Blue 500, hover: Blue 600

---

### 8. Progress Bar

```html
<div class="progress-bar">
  <div class="progress-fill" style="width: 60%"></div>
</div>
```

**Propriedades**:
- Altura: `0.5rem`
- Background: Gray 200
- Fill: Gradiente Blue → Purple
- Border radius: `9999px` (circular)
- Transiçêo: `width 0.5s ease-out`

---

### 9. Filtros (Category Filters)

Botões de filtro em forma de pill

```css
.category-filter {
  padding: 0.5rem 1rem;
  border-radius: 9999px;
  font-size: 0.875rem;
  font-weight: 600;
  border: 2px solid #E5E7EB;
  background-color: white;
  color: #6B7280;
}

.category-filter:hover {
  border-color: #6366F1;
  color: #6366F1;
  background-color: #EEF2FF;
}

.category-filter.active {
  border-color: #6366F1;
  background-color: #6366F1;
  color: white;
}
```

---

### 10. Modal

Modal para exibir conteúdo completo de módulos

**Estrutura**:
- Overlay: Background escuro semi-transparente
- Container: Branco, centralizado
- Max-width: `90vw` ou `1000px`
- Max-height: `90vh`
- Scroll: Interno
- Botêo fechar: Canto superior direito

**Conteúdo Markdown**:
- Segue estilos de tipografia markdown (ver seçêo Tipografia)
- Blockquotes: Borda esquerda verde (Iniciante)

---

### 11. Footer

```html
<footer class="bg-gray-900 text-white py-12">
  <!-- 3 colunas: Sobre | Links | Comunidade -->
  <!-- Copyright e créditos -->
</footer>
```

**Propriedades**:
- Background: Gray 900
- Texto: Branco
- Links: Gray 400, hover: Branco
- Grid: 3 colunas (desktop), 1 coluna (mobile)

---

## ✨ Animações e Transições

### Princípios de Animaçêo

1. **Suavidade**: Usar easing functions naturais
2. **Performance**: Usar `transform` e `opacity`
3. **Sutileza**: Animações devem melhorar, nêo distrair
4. **Acessibilidade**: Respeitar `prefers-reduced-motion`

---

### Animações Definidas

#### 1. Fade In

```css
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in {
  animation: fadeIn 0.8s ease-out;
}
```

**Uso**: Hero section, elementos de destaque

---

#### 2. Scroll Animation

```css
.animate-on-scroll {
  opacity: 0;
  transform: translateY(30px);
  transition: opacity 0.6s ease-out, transform 0.6s ease-out;
}

.animate-on-scroll.fade-in {
  opacity: 1;
  transform: translateY(0);
}
```

**Uso**: Cards e seções ao fazer scroll

**JavaScript**: Intersection Observer com threshold 0.1

---

#### 3. Card Hover

```css
.level-card {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.level-card:hover {
  transform: translateY(-4px);
  box-shadow: var(--shadow-xl);
}
```

---

#### 4. Button Interaction

```css
button {
  transition: all 0.2s ease-in-out;
}

button:active {
  transform: scale(0.98);
}
```

---

#### 5. Loading State

```css
.loading {
  opacity: 0.6;
  pointer-events: none;
}

.loading::after {
  content: "";
  /* Spinner circular */
  border: 2px solid #3B82F6;
  border-top-color: transparent;
  border-radius: 50%;
  animation: spin 0.6s linear infinite;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}
```

---

#### 6. Toast Notification

```css
@keyframes slideInRight {
  from {
    transform: translateX(100%);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
}

.toast {
  animation: slideInRight 0.3s ease-out;
}
```

---

#### 7. Mobile Menu

```css
#mobile-menu {
  transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
}

#mobile-menu.hidden {
  opacity: 0;
  max-height: 0;
  overflow: hidden;
}

#mobile-menu:not(.hidden) {
  opacity: 1;
  max-height: 500px;
}
```

---

### Timing Functions

| Nome | Easing | Uso |
|------|--------|-----|
| **ease-out** | `cubic-bezier(0, 0, 0.2, 1)` | Entradas, fade in |
| **ease-in-out** | `cubic-bezier(0.4, 0, 0.2, 1)` | Transições gerais |
| **linear** | `linear` | Loaders, spinners |

---

### Reduced Motion

```css
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }

  html {
    scroll-behavior: auto;
  }
}
```

Respeitar preferências do usuário para movimento reduzido.

---

## 📱 Responsividade

### Abordagem: Mobile-First

O design é construído primeiro para mobile e depois expandido para telas maiores.

### Breakpoints

```css
/* Mobile: < 640px (base) */
/* Tablet: >= 768px (md:) */
/* Desktop: >= 1024px (lg:) */
/* Large Desktop: >= 1280px (xl:) */
```

---

### Componentes Responsivos

#### Navigation

- **Mobile**: Hamburger menu
- **Desktop**: Menu horizontal com dropdown

#### Grid de Cards

- **Mobile**: 1 coluna
- **Tablet**: 2 colunas
- **Desktop**: 3 colunas

```html
<div class="grid grid-cols-1 md:grid-cols-3 gap-8">
```

#### Tipografia

- **Mobile**: Tamanhos reduzidos (H1: 2rem)
- **Desktop**: Tamanhos completos (H1: 4rem)

#### Hero Section

- **Mobile**: CTA centralizado, padding reduzido
- **Desktop**: Layout amplo, padding generoso

#### Stats Section

- **Mobile**: 2 colunas (grid-cols-2)
- **Desktop**: 4 colunas (md:grid-cols-4)

---

## ♿ Acessibilidade

### Conformidade

**Padrêo**: WCAG 2.1 Level AA

---

### Implementações

#### 1. Contraste de Cores

Todos os textos seguem contraste mínimo:
- Texto normal: 4.5:1
- Texto grande: 3:1

#### 2. Skip to Main Content

```html
<a href="#main" class="skip-to-main">
  Pular para conteúdo principal
</a>
```

Link invisível que aparece ao receber foco.

#### 3. Focus Visible

```css
*:focus-visible {
  outline: 2px solid #3B82F6;
  outline-offset: 2px;
  border-radius: 4px;
}
```

Indicador visual claro para navegaçêo por teclado.

#### 4. Navegaçêo por Teclado

- ESC: Fecha menu mobile
- Tab: Navegaçêo sequencial
- Enter/Space: Ativa botões

#### 5. ARIA Labels

Botões e links possuem labels descritivos:

```html
<button aria-label="Abrir menu de navegaçêo">
  [Ícone hamburger]
</button>
```

#### 6. Semantic HTML

Uso correto de tags semânticas:
- `<nav>` para navegaçêo
- `<main>` para conteúdo principal
- `<article>` para módulos
- `<section>` para seções
- Heading hierarchy (H1 → H2 → H3)

#### 7. Textos Alternativos

Todas as imagens possuem `alt` descritivo.

#### 8. Reduced Motion

Respeita preferência `prefers-reduced-motion` (ver seçêo Animações).

#### 9. Scrollbar Customizada

```css
::-webkit-scrollbar {
  width: 10px;
}

::-webkit-scrollbar-track {
  background: #F3F4F6;
}

::-webkit-scrollbar-thumb {
  background: #9CA3AF;
  border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
  background: #6B7280;
}
```

---

## 🖨️ Print Styles

Otimizaçêo para impressêo:

```css
@media print {
  nav, footer {
    display: none; /* Remove navegaçêo e rodapé */
  }

  .no-print {
    display: none; /* Remove elementos marcados */
  }

  * {
    background: white !important;
    color: black !important;
  }
}
```

---

## 🎨 Outros Elementos Visuais

### Selection Color

```css
::selection {
  background-color: #3B82F6;
  color: white;
}

::-moz-selection {
  background-color: #3B82F6;
  color: white;
}
```

Quando usuário seleciona texto, aparece com fundo azul.

---

### Custom Scrollbar

Ver seçêo de Acessibilidade.

---

### Smooth Scrolling

```css
html {
  scroll-behavior: smooth;
}
```

Rolagem suave ao clicar em links âncora.

---

## 📦 Recursos Externos

### CDN e Libraries

1. **Tailwind CSS**
   - URL: `https://cdn.tailwindcss.com`
   - Versêo: Latest

2. **Google Fonts - Inter**
   - URL: `https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap`

3. **Font Awesome** (opcional, se usado)
   - Para ícones adicionais

---

## 🚀 Performance

### Otimizações

1. **Font Display**: `display=swap` no Google Fonts
2. **Lazy Loading**: Imagens com `loading="lazy"`
3. **Preconnect**: Links para Google Fonts
4. **CSS Minificado**: Produçêo usa arquivo minificado
5. **Smooth Animations**: Apenas `transform` e `opacity`

---

## 📝 Notas Finais

### Manutençêo

- Manter consistência nas cores dos níveis
- Testar novos componentes em todos os breakpoints
- Validar contraste de cores com ferramentas WCAG
- Testar animações com `prefers-reduced-motion`

### Expansêo

Este style guide é um documento vivo e deve ser atualizado conforme novos componentes sêo adicionados ao projeto.

---

**Última atualizaçêo**: 2025-11-04
**Versêo**: 1.0
**Autor**: FEP Team
