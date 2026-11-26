# Módulo 2B.1: Anatomia de LLMs - Como Funcionam Por Dentro

**Nível 2B: Técnico | Carga Horária: 15 horas**

---

## 📖 Visêo Geral

Entenda a arquitetura interna de Large Language Models. Domine conceitos de transformers, attention mechanisms, tokenizaçêo e embeddings. Saiba como modelos "pensam" para usar com mais eficácia.

### Objetivos:
- Compreender arquitetura Transformer (nêo precisa codificar)
- Explicar como funciona self-attention e embeddings
- Entender limitações técnicas (contexto, alucinações, vieses)
- Comparar diferentes LLMs (GPT, Claude, Gemini, LLaMA)
- Tomar decisões informadas sobre qual modelo usar quando

---

## 🧠 De Redes Neurais a Transformers

### Evoluçêo Histórica:

**1. Perceptron (1958) → Redes Neurais Simples**
```
Input → [Camada de neurônios] → Output
Limitaçêo: Só funções lineares
```

**2. Deep Learning (2010s) → CNNs, RNNs**
```
CNNs: Boas para imagens (convoluçêo espacial)
RNNs: Boas para sequências (memória temporal)
Limitaçêo: RNNs nêo escalam (vanishing gradient)
```

**3. Attention Mechanism (2017) → Transformers**
```
"Attention is All You Need" (Vaswani et al)
Ideia: Focar em partes relevantes do input
Resultado: Escala para bilhões de parâmetros
```

### Por que Transformers Dominam:

✅ **Paralelizaçêo:** Processa texto todo de uma vez (vs RNN sequencial)
✅ **Long-range dependencies:** Conecta palavras distantes no texto
✅ **Escalabilidade:** Mais dados + mais parâmetros = melhor performance
✅ **Transfer learning:** Pré-treino geral + fine-tune específico

---

## 🔍 Arquitetura Transformer (Simplificada)

### Componentes Principais:

```
INPUT: "O gato está no telhado"
   ↓
[1. TOKENIZAÇêO]
   → ["O", "gato", "está", "no", "tel", "hado"]
   ↓
[2. EMBEDDING]
   → Cada token vira vetor de 768-12288 dimensões
   ↓
[3. POSITIONAL ENCODING]
   → Adiciona informaçêo de ordem (palavra 1, 2, 3...)
   ↓
[4. SELF-ATTENTION] (🔑 Magia acontece aqui)
   → Cada palavra "olha" para todas as outras
   → Identifica relações: "gato" se relaciona com "telhado"
   ↓
[5. FEED-FORWARD]
   → Transformações nêo-lineares
   ↓
[6. REPETIR 4-5] (12-96 vezes, dependendo do modelo)
   ↓
[7. OUTPUT]
   → Probabilidades para próxima palavra
   → Ex: "O gato está no telhado [comendo: 0.3, dormindo: 0.5, ...]"
```

---

## 💡 Self-Attention: O Coraçêo do Transformer

### Como Funciona (Analogia):

Imagine uma sala de aula onde cada aluno (palavra) pode fazer perguntas para todos os outros:

**Frase:** "O professor explica IA para alunos interessados"

**Self-Attention calcula:**
- "professor" deveria prestar atençêo em: "explica" (0.8), "alunos" (0.6), "IA" (0.7)
- "alunos" deveria prestar atençêo em: "interessados" (0.9), "professor" (0.5)
- "interessados" deveria prestar atençêo em: "alunos" (0.95), "IA" (0.4)

**Resultado:** Modelo entende que "interessados" modifica "alunos", nêo "professor"

### Matematicamente (Conceitual):

```
Para cada palavra:
1. Query (Q): "O que eu estou procurando?"
2. Key (K): "O que eu tenho a oferecer?"
3. Value (V): "Qual informaçêo eu carrego?"

Attention Score = Similarity(Q, K)
Output = Weighted sum of Values

Exemplo:
Palavra "gato" (Query) procura sujeitos de açêo
Palavra "pulou" (Key) oferece "sou um verbo"
Score alto → "gato" presta atençêo em "pulou"
```

### Multi-Head Attention:

Ao invés de 1 mecanismo de atençêo, usa 8-96 em paralelo:
- Head 1: Foca em sintaxe (sujeito-verbo-objeto)
- Head 2: Foca em semântica (significado)
- Head 3: Foca em contexto longo
- Head 4-8: Outros padrões aprendidos

**Analogia:** 8 especialistas analisando o mesmo texto de ângulos diferentes

---

## 📦 Tokenizaçêo: Quebrando Texto em Pedaços

### O que sêo Tokens?

**Nêo sêo palavras!** Sêo subunidades:

**Exemplo (GPT-4):**
```
Input: "Superprofessores"
Tokens: ["Super", "prof", "ess", "ores"]
4 tokens (nêo 1 palavra)

Input: "ChatGPT é incrível!"
Tokens: ["Chat", "G", "PT", " é", " in", "cr", "ível", "!"]
8 tokens
```

### Por que Tokenizar?

✅ **Eficiência:** Vocabulário fixo (50k-100k tokens vs milhões de palavras)
✅ **Generalizaçêo:** Palavras novas podem ser compostas de tokens conhecidos
✅ **Multilíngue:** Mesmos tokens funcionam em múltiplas línguas

### Algoritmos Comuns:

**1. Byte-Pair Encoding (BPE) - Usado por GPT**
- Começa com caracteres
- Mescla pares frequentes
- Ex: "a" + "b" → "ab" se aparecem juntos frequentemente

**2. WordPiece - Usado por BERT**
- Similar a BPE, mas otimiza likelihood

**3. SentencePiece - Usado por T5, LLaMA**
- Trata texto como sequência de bytes (Unicode-aware)

### Implicações para Educadores:

⚠️ **Limite de tokens ≠ Limite de palavras**
- GPT-4: 128k tokens ≈ 96k palavras (português)
- Claude: 200k tokens ≈ 150k palavras

⚠️ **Palavras longas custam mais**
- "a" = 1 token
- "Institucionalizaçêo" = 5+ tokens

**Ferramenta para Contar:** https://platform.openai.com/tokenizer

---

## 🎨 Embeddings: Representando Significado em Vetores

### Conceito:

**Palavra → Vetor numérico de alta dimensêo**

**Exemplo (simplificado para 3D):**
```
"rei"      → [0.8, 0.3, 0.1]
"rainha"   → [0.8, 0.3, 0.9]
"homem"    → [0.5, 0.2, 0.1]
"mulher"   → [0.5, 0.2, 0.9]

Matemática vetorial:
rei - homem + mulher ≈ rainha
[0.8,0.3,0.1] - [0.5,0.2,0.1] + [0.5,0.2,0.9] = [0.8,0.3,0.9]
```

### Propriedades Mágicas:

**1. Similaridade Semântica**
Palavras similares têm vetores próximos:
- "cachorro" e "cêo" → Distância pequena
- "cachorro" e "árvore" → Distância grande

**2. Analogias**
- Paris : França :: Berlim : ? → Alemanha
- Funcionam via aritmética vetorial!

**3. Transferência de Contexto**
- "banco" (sentar) vs "banco" (financeiro)
- Mesmo embedding muda significado por contexto

### Embeddings em LLMs:

**GPT-4:** 12,288 dimensões (cada token = vetor de 12k números)
**Claude 3:** Nêo revelado (estimado 8k-16k)
**Gemini:** Nêo revelado

**Visualizaçêo:** t-SNE ou PCA reduzem para 2D/3D para plotar

---

## 🏗️ Escala: De GPT-2 a GPT-4

### Evoluçêo de Parâmetros:

| Modelo | Parâmetros | Contexto | Ano |
|--------|-----------|----------|-----|
| GPT-2 | 1.5B | 1k tokens | 2019 |
| GPT-3 | 175B | 4k tokens | 2020 |
| GPT-3.5 | 175B | 16k tokens | 2022 |
| GPT-4 | ~1.7T* | 128k tokens | 2023 |
| Claude 3 Opus | ?** | 200k tokens | 2024 |
| Gemini 1.5 | ?** | 1M tokens | 2024 |

*Estimado, OpenAI nêo confirma
**Nêo revelado

### Lei de Escala (Scaling Laws):

**Descoberta (Kaplan et al, 2020):**
Performance ∝ (Parâmetros)^α × (Dados)^β × (Computaçêo)^γ

**Implicaçêo:** Modelos maiores com mais dados sêo previsivelmente melhores

**Mas... há limites:**
- 💰 Custo: GPT-4 custou ~$100M para treinar
- ⚡ Energia: Equivalente a 1000 lares/ano
- 🌍 Dados: Internet tem limite
- 📐 Retorno diminui (modelo 10x maior ≠ 10x melhor)

---

## 🔬 Comparaçêo de LLMs (Novembro 2025)

### GPT-4 (OpenAI)

**Pontos Fortes:**
✅ Raciocínio lógico superior
✅ Código (especialmente Python)
✅ Seguir instruções complexas
✅ Integraçêo com ferramentas (plugins)

**Pontos Fracos:**
❌ Contexto "apenas" 128k
❌ Vieses ocidentais
❌ Custo alto (API)

**Melhor para:** Tutoria 1-on-1, geraçêo de código, raciocínio matemático

---

### Claude 3 Opus (Anthropic)

**Pontos Fortes:**
✅ Contexto 200k (mais longo)
✅ Ética e segurança (Constitutional AI)
✅ Redaçêo criativa e análise literária
✅ Menos alucinaçêo

**Pontos Fracos:**
❌ Código inferior ao GPT-4
❌ Mais "conservador" (recusa mais)

**Melhor para:** Análise de textos longos, feedback em redações, conteúdo sensível

---

### Gemini 1.5 Pro (Google)

**Pontos Fortes:**
✅ Contexto 1M tokens (absurdo!)
✅ Multimodal nativo (texto+imagem+vídeo+áudio)
✅ Integraçêo com Google Workspace
✅ Busca em tempo real

**Pontos Fracos:**
❌ Qualidade inconsistente
❌ Menos controle fino

**Melhor para:** Análise de materiais multimídia, pesquisa com fontes atuais

---

### LLaMA 3 (Meta)

**Pontos Fortes:**
✅ Open-source (gratuito)
✅ Pode rodar localmente (com GPU)
✅ Customizável (fine-tune completo)
✅ Privacidade (dados nêo saem do servidor)

**Pontos Fracos:**
❌ Requer expertise técnico
❌ Infraestrutura própria
❌ Qualidade inferior aos comerciais

**Melhor para:** Instituições com dados sensíveis, projetos de pesquisa, budget limitado

---

## ⚠️ Limitações Técnicas

### 1. Limite de Contexto

**O que é:** Quantidade máxima de texto que modelo "lembra"

**Implicaçêo:**
- Conversa longa → Esquece início
- Documento > contexto → Precisa resumir/cortar

**Soluçêo:**
- RAG (Retrieval Augmented Generation) - Módulo 2B.2
- Summarizaçêo iterativa
- Sliding window

---

### 2. Alucinações

**O que é:** Modelo inventa fatos que parecem verdade

**Por que acontece:**
- Treinado para gerar texto plausível, nêo verdadeiro
- Nêo tem "check de realidade"
- Preenche lacunas com "invenções"

**Exemplo:**
```
Prompt: "Quem ganhou Nobel de Física em 2035?"
Modelo: "Dra. Maria Santos, por trabalho em fusêo fria"
[FALSO: 2035 é futuro! Mas resposta parece legítima]
```

**Mitigaçêo:**
- Pedir fontes e verificar
- RAG com base de conhecimento confiável
- Fine-tune em dados verificados

---

### 3. Vieses

**O que é:** Modelo reflete preconceitos nos dados de treino

**Exemplos Documentados:**
- Associaçêo "CEO" → "homem" (mais frequente que "mulher")
- Descrições de profissões variam por gênero
- Vieses raciais em geraçêo de imagens

**Mitigaçêo:**
- Estar ciente e testar
- Diversificar prompts
- Usar modelos com RLHF (Reinforcement Learning from Human Feedback)

---

### 4. Raciocínio ≠ Compreensêo

**Modelos sêo pattern matchers, nêo "pensadores":**

**O que fazem bem:**
✅ Reconhecer padrões estatísticos
✅ Completar sequências
✅ Interpolar conhecimento

**O que NêO fazem:**
❌ Raciocínio causal profundo
❌ Planejamento de longo prazo
❌ Compreensêo física do mundo
❌ Teoria da mente (entender intenções)

**Exemplo de Falha:**
```
Prompt: "Tenho 3 laranjas. Como 2. Pego mais 5. Quantas tenho?"
GPT-3: "6" ✅ (certo)

Prompt: "Tenho 3 laranjas. Como 2. Pego mais 5. Planto 1. Quanto tempo até ter mais laranjas?"
GPT-3: "Cerca de 3 anos" (correto: 3-5 anos para laranjeira dar frutos)

Prompt: "Tenho 3 laranjas. Como 2. Pego mais 5. Planto 1. Quantas laranjas tenho agora?"
GPT-3: "6" ❌ (errado: 5, pois plantei 1)
```

**Liçêo:** Modelos falham em raciocínio multi-step com mudanças de estado

---

## 🛠️ Ferramentas para Explorar LLMs

### 1. Playgrounds Oficiais

**OpenAI Playground:** https://platform.openai.com/playground
- Ajustar temperatura, top-p, frequência
- Ver tokens e custos

**Anthropic Console:** https://console.anthropic.com
- Testar Claude com controles finos

**Google AI Studio:** https://aistudio.google.com
- Testar Gemini, incluir imagens/vídeos

---

### 2. Visualizações de Attention

**BertViz:** https://github.com/jessevig/bertviz
- Visualizar o que cada attention head "olha"
- Entender decisões do modelo

**LLM Visualization:** https://bbycroft.net/llm
- Animaçêo 3D de forward pass

---

### 3. Contadores de Tokens

**OpenAI Tokenizer:** https://platform.openai.com/tokenizer
**Hugging Face Tokenizer:** https://huggingface.co/spaces/Xenova/the-tokenizer

---

### 4. Comparadores de Modelos

**LMSYS Chatbot Arena:** https://arena.lmsys.org
- Compare respostas lado-a-lado
- Vote no melhor (crowdsourced ranking)

**Artificial Analysis:** https://artificialanalysis.ai
- Benchmarks de qualidade, velocidade, custo

---

## 📦 Recursos do Módulo

### 📹 Videoaulas (4h)
- História: de RNNs a Transformers (40 min)
- Arquitetura Transformer explicada (60 min)
- Tokenizaçêo e Embeddings (45 min)
- Comparaçêo de LLMs (55 min)

### 💬 Práticas (9h)
- Explorar Playgrounds (3h)
- Visualizar attention (2h)
- Comparar outputs de diferentes LLMs (2h)
- Testar limites (contexto, alucinaçêo) (2h)

### ✅ Avaliaçêo (2h)
- Quiz: 30 questões (conceitos técnicos)
- Projeto: Relatório comparando 3 LLMs para caso de uso educacional

---

## 📚 Referências

- **Paper:** "Attention is All You Need" (Vaswani et al, 2017)
- **Curso:** Stanford CS224N (NLP with Deep Learning)
- **Livro:** *Speech and Language Processing* (Jurafsky & Martin) - Cap. 10-11
- **Blog:** Jay Alammar's Illustrated Transformer (jalammar.github.io)

---

**© 2025 SuperProfessores | Licença MIT**
