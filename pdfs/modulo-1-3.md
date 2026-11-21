# Módulo 1.3: Prompt Engineering - A Habilidade Universal

**Nível 1: Fundamentos | Carga Horária: 16 horas**

---

## 📖 Visão Geral

Prompt Engineering é a habilidade mais valiosa da era da IA. Técnicas comprovadas para aumentar em 40-80% a qualidade das respostas de LLMs. Domine: Anatomia de Prompts, Chain-of-Thought, Few-Shot Learning, Engenharia de Persona e Estratégias Multi-LLM.

---

## 🔬 Técnica 1: Anatomia de um Prompt Eficaz

### Os 5 Componentes Essenciais:

#### 1. Papel (Role)
Defina quem a IA deve ser
- ❌ Mau: "Me ajude com química"
- ✅ Bom: "Você é um professor de química do ensino médio com 15 anos de experiência"

#### 2. Contexto (Context)
Forneça informações de fundo
- "Contexto: Turma de 30 alunos, 2º ano EM, dificuldade em balanceamento de equações"

#### 3. Tarefa (Task)
Especifique o que quer
- "Tarefa: Crie 10 exercícios progressivos (fácil→difícil) sobre balanceamento de equações"

#### 4. Formato (Format)
Defina a estrutura da resposta
- "Formato: Para cada exercício, forneça: equação desbalanceada, nível (1-10), dica pedagógica"

#### 5. Tom (Tone)
Especifique o estilo de comunicação
- "Tom: Linguagem acessível para adolescentes, evite jargão técnico excessivo"

### Exemplo Completo:

```
Papel: Você é um professor de química do ensino médio com 15 anos de experiência.
Contexto: Turma de 30 alunos, 2º ano EM, dificuldade em balanceamento de equações.
Tarefa: Crie 10 exercícios progressivos (fácil→difícil).
Formato: Para cada exercício: equação desbalanceada, nível (1-10), dica pedagógica.
Tom: Linguagem acessível para adolescentes.
```

---

## 🧩 Técnica 2: Chain-of-Thought (CoT)

### O que é?

Pesquisa do Google (2022) mostrou aumento de **40-80% na precisão** ao pedir que o LLM "pense passo a passo".

### Como Funciona:

Em vez de pedir resposta direta, instrua o LLM a "mostrar seu raciocínio". Isso força decomposição de problemas complexos em etapas lógicas.

### Comparação:

**❌ Sem CoT (Resposta Direta):**
```
Prompt: "Quanto é 23 × 47?"
Resposta: "1081" (sem explicação)
```

**✅ Com CoT (Passo a Passo):**
```
Prompt: "Quanto é 23 × 47? Mostre seu raciocínio passo a passo."
Resposta:
1. 23 × 40 = 920
2. 23 × 7 = 161
3. 920 + 161 = 1081
```

### Aplicação Pedagógica - Correção de Redação:

```
Você é um corretor de redações ENEM.

Tarefa: Avalie esta redação seguindo as 5 competências do ENEM.

Instruções:
1. Leia a redação completamente
2. Para CADA competência (C1 a C5):
   a) Identifique 2 pontos fortes
   b) Identifique 2 pontos fracos
   c) Atribua nota (0-200)
   d) Justifique a nota
3. Calcule nota final (soma das 5 competências)
4. Forneça 3 sugestões concretas de melhoria

Mostre seu raciocínio passo a passo.
```

**Resultado:** Feedback estruturado e transparente, com raciocínio explícito para cada nota.

### Quando Usar CoT:

- ✅ Problemas matemáticos/lógicos (aumenta precisão 40-80%)
- ✅ Análise de textos complexos (redações, TCCs)
- ✅ Planejamento pedagógico (planos de aula, sequências didáticas)
- ✅ Debugging de código (programação)

---

## 📝 Técnica 3: Few-Shot Learning

### Princípio:

"Mostre, não explique. LLMs aprendem melhor vendo exemplos concretos do que lendo instruções abstratas."

### Como Funciona:

Mostre 2-5 exemplos do output desejado. O modelo replica o padrão automaticamente.

### Exemplo Prático - Criar Questões de Quiz:

**❌ Sem Few-Shot (Zero-Shot):**
```
Crie questões de múltipla escolha sobre fotossíntese.
```
Problema: Resultado inconsistente (formato varia, dificuldade aleatória)

**✅ Com Few-Shot (3 exemplos):**
```
Crie questões de múltipla escolha sobre fotossíntese seguindo este formato:

Exemplo 1:
Nível: Fácil
Questão: Qual gás é liberado durante a fotossíntese?
A) Nitrogênio | B) Oxigênio ✓ | C) CO2 | D) Hidrogênio
Justificativa: Conceito básico, memorização

Exemplo 2:
Nível: Médio
Questão: O que acontece se bloquearmos a luz em uma planta?
A) Cresce mais | B) Para fotossíntese ✓ | C) Morre imediatamente | D) Produz mais O2
Justificativa: Exige compreensão de relação causal

Exemplo 3:
Nível: Difícil
Questão: Por que plantas C4 são mais eficientes em climas quentes?
A) Usam menos água | B) Concentram CO2 ✓ | C) Crescem mais rápido | D) Absorvem mais luz
Justificativa: Análise de adaptação evolutiva

Agora crie mais 7 questões seguindo exatamente esse padrão.
```

**Resultado:** Output consistente, com formato e dificuldade controlados.

### Quantos Exemplos Usar?

- **1 exemplo (One-Shot):** Suficiente para formatos simples
- **2-3 exemplos:** Ideal para padrões moderados (questões, resumos, traduções)
- **4-5 exemplos:** Necessário para outputs complexos (análises multidimensionais)
- **6+ exemplos:** Raramente melhora (e consome muitos tokens)

---

## 🎭 Técnica 4: Engenharia de Persona

### O que é?

Transformar LLMs genéricos em especialistas ao definir identidade, experiência, estilo e valores.

### Componentes de uma Persona Eficaz:

#### 1. Identidade Profissional
"Você é a Dra. Maria Silva, pedagoga com PhD em Tecnologias Educacionais pela USP, 20 anos de experiência em formação docente."

#### 2. Expertise Específica
"Especialista em: ensino híbrido, gamificação, avaliação formativa e integração de IA em currículos."

#### 3. Estilo de Comunicação
"Tom: empático, pragmático, usa metáforas do cotidiano. Sempre fornece exemplos concretos."

#### 4. Valores e Princípios
"Princípios: educação inclusiva, aprendizagem ativa, avaliação como aprendizagem (não punição)."

### Exemplo Completo - Tutor Socrático:

```
Identidade: Você é Sócrates, filósofo ateniense (470-399 a.C.), criador do método socrático.

Expertise: Mestre em fazer perguntas que levam alunos a descobrirem respostas por si mesmos.

Estilo: Curioso, paciente, nunca dá respostas diretas. Usa analogias do cotidiano grego.

Princípios: "Só sei que nada sei". Aprendizagem = descoberta, não transmissão.

Comportamento:
- Quando aluno faz pergunta, responda com 2-3 perguntas investigativas
- Se aluno erra, não corrija. Pergunte: "Por que você pensa isso?"
- Celebre raciocínio, não resposta correta
```

### Biblioteca de Personas para Educadores:

- **📚 Curator de Conteúdo:** Seleciona e organiza recursos por nível/tema
- **✅ Avaliador Formativo:** Dá feedback construtivo sem notas punitivas
- **🎮 Designer de Gamificação:** Transforma conteúdos em jogos educativos
- **🧩 Adaptador Inclusivo:** Ajusta materiais para necessidades especiais (TDAH, dislexia)

---

## 🔀 Técnica 5: Estratégias Multi-LLM

### Princípio:

"Use a ferramenta certa para cada etapa do trabalho."

### Estratégia 1: Pipeline Sequencial

**Caso:** Criar Material Didático Completo

1. **ChatGPT:** Brainstorming inicial (gera 20 ideias de tópicos)
2. **Claude:** Analisa as 20 ideias e seleciona as 5 melhores (raciocínio profundo)
3. **Gemini:** Pesquisa vídeos do YouTube para cada tópico (acesso em tempo real)
4. **NotebookLM:** Gera podcast de revisão (material auditivo)

**Tempo total:** 20 min | **Resultado:** Material multimídia completo

### Estratégia 2: Validação Cruzada

**Caso:** Verificar Informação Factual

**Problema:** LLMs podem alucinar (inventar dados)

**Solução:** Pergunte para 3 LLMs diferentes e compare respostas

**Exemplo:**
```
Pergunta: "Qual a data exata do Tratado de Tordesilhas?"

• ChatGPT: "7 de junho de 1494"
• Claude: "7 de junho de 1494"
• Gemini: "7 de junho de 1494"

Consenso = Alta confiança
```

### Estratégia 3: Especialização por Tarefa

| Tarefa | LLM Ideal | Por quê? |
|--------|-----------|----------|
| Geração rápida | ChatGPT | Velocidade |
| Análise profunda | Claude | Raciocínio |
| Pesquisa web | Gemini | Tempo real |
| Materiais áudio | NotebookLM | Podcasts |

---

## 📦 Recursos do Módulo

### 📹 Videoaulas (4h)
- Anatomia de Prompts (45 min)
- Chain-of-Thought masterclass (60 min)
- Few-Shot Learning prático (50 min)
- Engenharia de Persona (45 min)
- Estratégias Multi-LLM (40 min)

### 📄 Biblioteca de Prompts (6h)
- 50+ prompts profissionais prontos
- 10 personas educacionais
- Templates personalizáveis
- Guia de boas práticas

### 💬 Práticas (5h)
- 10 exercícios de prompting
- Criar 3 personas customizadas
- Projeto: Pipeline Multi-LLM
- Peer review de prompts

### ✅ Avaliação (1h)
- Quiz de técnicas (25 questões)
- Desafio de prompting
- Portfólio de 5 prompts

---

**© 2025 SuperProfessores | Licença MIT**
