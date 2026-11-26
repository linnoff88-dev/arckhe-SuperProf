# Módulo 1.2: Ecossistema de Ferramentas de IA

**Nível 1: Fundamentos | Carga Horária: 12 horas**

---

## 📖 Visêo Geral

Panorama atualizado (Novembro 2025) das principais ferramentas de IA educacional. Aprenda a operar ChatGPT Study Mode, Claude Learning Mode, Gemini Guided Learning, Google NotebookLM e domine o Framework FEAT para ensinar com IA de forma estruturada.

### Objetivos de Aprendizagem:

- Operar as 5 principais ferramentas de IA educacional com tutoriais práticos
- Comparar vantagens e limitações de cada ferramenta para diferentes contextos
- Gerar materiais didáticos com IA (podcasts, flashcards, quizzes)
- Aplicar o Framework FEAT em atividades pedagógicas

---

## 🤖 Ferramenta 1: ChatGPT + Study Mode (OpenAI)

### Recursos Principais (Nov 2025):

- **Study Mode:** Tutor socrático que NêO dá respostas prontas, mas guia com perguntas
- **Canvas:** Editor colaborativo para textos e código (GPT-4o)
- **Advanced Voice:** Conversaçêo por voz em tempo real
- **Custom GPTs:** Criar assistentes especializados (ex: "Corretor de Redações ENEM")
- **Memory:** IA lembra preferências entre sessões

### Tutorial Prático - Criar Quiz:

**Prompt Estruturado:**

```
Você é um criador de quizzes educacionais.

Contexto: Turma de 9º ano, conteúdo "Fotossíntese"
Objetivo: Avaliar compreensêo de conceitos-chave

Tarefa: Crie 10 questões de múltipla escolha:
- 3 fáceis (conceitos básicos)
- 5 médias (aplicaçêo)
- 2 difíceis (análise)

Formato: Para cada questêo, forneça:
1. Enunciado claro
2. 4 alternativas (A, B, C, D)
3. Resposta correta
4. Justificativa pedagógica
```

**Resultado:** Quiz completo em 30 segundos, pronto para Kahoot/Google Forms

### Limitações:

- ❌ Alucinações (pode inventar dados ou referências)
- ❌ Conhecimento desatualizado (base até out/2023, sem internet em tempo real)
- ❌ Viés cultural (treinado majoritariamente em inglês)

### Quando Usar:

- ✅ Geraçêo rápida de materiais (quizzes, exercícios, resumos)
- ✅ Tutoria socrática com Study Mode
- ✅ Brainstorming de ideias pedagógicas
- ❌ Pesquisa de dados recentes (use Google/Perplexity)
- ❌ Análise de documentos longos (use Claude/NotebookLM)

---

## 🧠 Ferramenta 2: Claude + Learning Mode (Anthropic)

### Vantagens Competitivas:

- **Contexto massivo:** 200k tokens (equivale a 500 páginas) vs 128k do GPT-4
- **Raciocínio superior:** Melhor em matemática, lógica e programaçêo
- **Transparência:** Explica raciocínio passo a passo (Chain-of-Thought nativo)
- **Segurança:** Treinado com Constitutional AI (reduz vieses e toxicidade)

### Tutorial Prático - Análise de TCC:

**Passo a passo:**

1. Faça upload do TCC completo (PDF até 50 páginas)
2. Use o prompt:

```
Você é um orientador de TCC experiente.

Analise este trabalho em 3 dimensões:
1. Estrutura metodológica (ABNT, coerência argumentativa)
2. Qualidade do referencial teórico (autores-chave, atualizaçêo)
3. Contribuiçêo científica (originalidade, relevância)

Para cada dimensêo, forneça:
- Nota (0-10)
- 3 pontos fortes
- 3 pontos a melhorar (com sugestões concretas)
```

3. Claude analisa o documento completo e retorna feedback estruturado em 2 minutos

**Economia:** 4-6 horas de trabalho docente por TCC

### Quando Usar:

- ✅ Análise de documentos longos (TCCs, dissertações, apostilas)
- ✅ Raciocínio complexo (matemática, lógica, programaçêo)
- ✅ Feedback pedagógico detalhado
- ❌ Geraçêo de imagens (só texto)
- ❌ Conhecimento de eventos recentes (dados até ago/2024)

---

## 🌟 Ferramenta 3: Gemini + Guided Learning (Google)

### Recursos Únicos:

- **Integraçêo nativa:** Trabalha dentro de Google Docs/Sheets (sem copiar/colar)
- **Análise de vídeos:** Transcreve e analisa vídeos do YouTube automaticamente
- **Pesquisa em tempo real:** Acessa Google Search durante respostas
- **Traduçêo avançada:** Melhor LLM para idiomas menos comuns

### Tutorial Prático - Plano de Aula:

**Usando integraçêo com Google Docs:**

1. Abra Google Docs e ative Gemini (ícone no canto superior direito)
2. Digite o prompt:

```
Crie um plano de aula de 50 minutos sobre "Revoluçêo Industrial"
para turma de 8º ano.

Estrutura necessária:
1. Objetivos de aprendizagem (3-4 objetivos mensuráveis)
2. Materiais necessários
3. Sequência didática (abertura, desenvolvimento, fechamento)
4. Atividade prática (individual ou grupo)
5. Avaliaçêo formativa

Inclua 2 links de vídeos do YouTube relevantes.
```

3. Gemini gera o plano DENTRO do Google Docs (formatado, pronto para imprimir)
4. Pesquisa vídeos automaticamente e insere links funcionais

### Quando Usar:

- ✅ Trabalho dentro do Google Workspace (Docs, Sheets, Slides)
- ✅ Análise de vídeos do YouTube
- ✅ Pesquisa de informações atualizadas
- ❌ Raciocínio lógico complexo (use Claude)
- ❌ Criaçêo de tutores personalizados (use ChatGPT Custom GPTs)

---

## 📚 Ferramenta 4: Google NotebookLM

### Recursos Revolucionários:

- **Audio Overviews:** Gera podcasts de 10-20 min com 2 vozes sintéticas (homem + mulher) conversando sobre o conteúdo
- **Customizaçêo:** Ajustar tom (acadêmico/casual), duraçêo, público-alvo
- **Flashcards automáticos:** Extrai conceitos-chave e gera cartões Anki
- **Citações verificáveis:** Toda informaçêo tem link para trecho original do documento

### Tutorial Prático - Criar Podcast de Revisêo:

**Passo a passo:**

1. Acesse notebooklm.google.com (gratuito, requer login Google)
2. Clique em "New Notebook" e faça upload da apostila (PDF, até 50 páginas)
3. Clique em "Generate Audio Overview"
4. Aguarde 3-5 minutos (processamento)
5. Download do MP3 (podcast de 10-20 min pronto para distribuir)

**Exemplo real:** Apostila de 30 páginas sobre "Sistema Digestório" → Podcast de 15 min com 2 hosts conversando sobre digestêo, enzimas e metabolismo

### Casos de Uso:

1. **Material de revisêo:** Podcasts para alunos ouvirem no trajeto escola-casa
2. **Acessibilidade:** Alunos com dislexia/deficiência visual aprendem por áudio
3. **Ensino híbrido:** Alunos ausentes acessam conteúdo em formato alternativo
4. **Estudo ativo:** Flashcards gerados automaticamente para revisêo espaçada

### Limitações:

- ❌ Só funciona com textos (nêo processa vídeos ou áudios como entrada)
- ❌ Vozes sintéticas ainda perceptíveis como IA
- ❌ Limite de 50 páginas por documento

---

## ⚡ Framework FEAT - Pedagogia Estruturada com IA

Framework pedagógico da UNESCO (2024) para integrar IA em sala de aula de forma ética e eficaz.

### As 4 Etapas do FEAT:

#### **F - Formulate (Formular)**

**Objetivo:** Definir o problema pedagógico antes de usar IA

**Perguntas-chave:**
- Qual objetivo de aprendizagem quero alcançar?
- Que dificuldade específica os alunos têm?
- Por que IA é necessária aqui? (vs métodos tradicionais)

#### **E - Explore (Explorar)**

**Objetivo:** Testar ferramentas de IA e avaliar resultados

**Ações:**
- Experimente 2-3 ferramentas diferentes
- Compare qualidade dos outputs
- Verifique vieses e alucinações

#### **A - Assess (Avaliar)**

**Objetivo:** Validar se IA gerou valor pedagógico real

**Métricas:**
- Alunos aprenderam mais/melhor? (dados qualitativos/quantitativos)
- Houve economia de tempo docente?
- Inclusêo foi ampliada? (acessibilidade, personalizaçêo)

#### **T - Transform (Transformar)**

**Objetivo:** Escalar o uso de IA de forma sistêmica

**Ações:**
- Documentar boas práticas (template replicável)
- Treinar colegas professores
- Integrar IA no plano pedagógico institucional

### Exemplo de Aplicaçêo FEAT:

**Caso:** "Alunos têm dificuldade em interpretaçêo de texto"

- **F:** Objetivo = Melhorar compreensêo leitora. Hipótese = Feedback imediato aumenta aprendizagem
- **E:** Testar ChatGPT Study Mode (tutoria socrática) vs Claude (análise detalhada)
- **A:** Comparar notas em avaliaçêo (pré/pós). Coletar feedback dos alunos
- **T:** Criar guia "Como usar ChatGPT para interpretaçêo" e compartilhar com equipe

---

## 📦 Recursos do Módulo

### 📹 Videoaulas (3h)
- Tutorial ChatGPT Study Mode (35 min)
- Tutorial Claude Learning Mode (30 min)
- Tutorial Gemini Guided Learning (35 min)
- Tutorial NotebookLM (40 min)
- Framework FEAT explicado (40 min)

### 📄 Leituras (4h)
- Documentaçêo oficial das 4 ferramentas (120 min)
- Framework FEAT - Guia UNESCO (45 min)
- Comparativo de LLMs educacionais (30 min)
- 10 casos de uso práticos (45 min)

### 💬 Atividades Práticas (4h)
- Criar quiz com ChatGPT (30 min)
- Analisar TCC com Claude (45 min)
- Plano de aula com Gemini (45 min)
- Podcast com NotebookLM (60 min)
- Aplicar Framework FEAT (60 min)

### ✅ Avaliaçêo (1h)
- Quiz de ferramentas (20 questões)
- Projeto prático: Criar material com 2 IAs
- Peer review de materiais criados

---

**© 2025 SuperProfessores | Licença MIT**
