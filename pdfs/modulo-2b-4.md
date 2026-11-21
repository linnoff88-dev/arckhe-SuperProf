# Módulo 2B.4: Projeto Técnico - Educador de IA

**Nível 2B: Técnico | Carga Horária: 15 horas**

---

## 📖 Visão Geral

Projeto final integrador da Trilha B (Técnico) onde você cria uma aplicação funcional de IA para educação. Demonstre domínio de LLMs, RAG, agentes e deploy em produção, gerando portfólio técnico e certificação.

### Objetivos:
- Sintetizar conhecimentos de módulos 1, 2B.1, 2B.2 e 2B.3
- Implementar aplicação completa (backend + frontend + deploy)
- Documentar código e arquitetura tecnicamente
- Testar com usuários reais e medir impacto
- Obter certificação "Educador de IA - Nível Técnico"

---

## 🎯 Opções de Projeto

### Opção A: Sistema RAG Avançado

**Descrição:** Base de conhecimento institucional com busca semântica, chat e analytics

**Requisitos Técnicos:**
- ✅ RAG com ≥100 documentos (PDFs, slides, vídeos transcritos)
- ✅ Hybrid search (semantic + keyword)
- ✅ Reranking de resultados
- ✅ Citação de fontes com página/timestamp
- ✅ Interface chat (Streamlit/Gradio)
- ✅ Analytics: queries mais comuns, satisfação

**Stack Sugerido:**
- Vector DB: ChromaDB ou Pinecone
- Embeddings: OpenAI ada-002 ou HuggingFace
- LLM: GPT-4 ou Claude 3
- Frontend: Streamlit
- Deploy: Streamlit Cloud ou Railway

**Avaliação:**
- Qualidade do retrieval (Precision@5 >80%)
- Velocidade (resposta <3s)
- UX (survey de usuários >4/5)

---

### Opção B: Agente Educacional Autônomo

**Descrição:** Tutor/assistente que executa tarefas complexas com mínima supervisão

**Requisitos Técnicos:**
- ✅ Agente ReAct ou Plan-and-Execute
- ✅ ≥5 ferramentas customizadas
- ✅ Memória persistente (entre sessões)
- ✅ Logging de raciocínio (observabilidade)
- ✅ Tratamento de erros (loops, timeouts)
- ✅ Avaliação de performance (A/B test)

**Exemplos:**
- Tutor socrático de matemática
- Gerador de planos de aula completos
- Assistente de pesquisa acadêmica
- Corretor automatizado de redações

**Stack Sugerido:**
- Framework: LangChain ou CrewAI
- LLM: GPT-4 (raciocínio) ou Claude 3
- Tools: APIs externas + funções Python
- Frontend: Gradio ou custom React
- Deploy: Railway ou AWS Lambda

**Avaliação:**
- Taxa de sucesso em tarefas (>85%)
- Eficiência (passos até completar)
- Custo por tarefa (<$0.50)

---

### Opção C: Fine-Tuning para Caso de Uso Específico

**Descrição:** Modelo especializado em tarefa educacional nichada

**Requisitos Técnicos:**
- ✅ Dataset de treino (≥100 exemplos de qualidade)
- ✅ Fine-tuning de modelo open-source (LLaMA, Mistral) ou GPT-3.5
- ✅ Avaliação quantitativa (benchmark)
- ✅ Comparação com modelo base
- ✅ Deployment do modelo (API)
- ✅ Documentação de reprodutibilidade

**Exemplos:**
- Corretor de redações no estilo institucional
- Gerador de questões ENEM-like
- Tradutor de jargão científico para linguagem acessível
- Classificador de dúvidas (urgente/não-urgente, tópico)

**Stack Sugerido:**
- Modelo: LLaMA 3 8B (via HuggingFace)
- Fine-tuning: LoRA ou QLoRA (eficiente)
- Treinamento: Google Colab (GPU grátis) ou Runpod
- Deploy: Hugging Face Spaces ou Modal
- Monitoramento: Weights & Biases

**Avaliação:**
- Performance vs baseline (F1 score, BLEU, ROUGE)
- Análise de erros (qualitativa)
- Tempo de inferência (<2s)

---

### Opção D: Multi-Agent System (Avançado)

**Descrição:** Sistema com ≥3 agentes especializados trabalhando juntos

**Requisitos Técnicos:**
- ✅ 3-5 agentes com papéis distintos
- ✅ Orquestração e comunicação entre agentes
- ✅ Estado compartilhado (shared memory)
- ✅ Handling de conflitos e consenso
- ✅ Observabilidade (dashboards de atividade)
- ✅ Testes de integração

**Exemplo:**
- **Sistema de Criação de Curso:**
  - Agente Pesquisador (busca conteúdo)
  - Agente Designer (estrutura)
  - Agente Criador (gera materiais)
  - Agente Revisor (valida qualidade)

**Stack Sugerido:**
- Framework: CrewAI ou AutoGen
- LLM: Mix (GPT-4 para coordenação, GPT-3.5 para subtarefas)
- Orquestração: Celery ou Temporal
- Frontend: Custom React + WebSockets
- Deploy: Kubernetes ou Railway

**Avaliação:**
- Qualidade do output final (rubrica)
- Eficiência vs agente único
- Escalabilidade (10x tarefas em paralelo)

---

## 📋 Estrutura do Projeto

### Fase 1: Proposta (Semana 1)

**Documento de Proposta (3-5 páginas):**

**1. Problema e Motivação**
- Qual dor educacional você está resolvendo?
- Por que uma solução técnica de IA é apropriada?
- Quantifique: quantas pessoas afetadas, quanto tempo economizado, etc

**2. Solução Técnica**
- Arquitetura de alto nível (diagrama)
- Tecnologias escolhidas (justifique cada uma)
- Trade-offs considerados (por que X e não Y?)

**3. Roadmap Técnico**
```
Semana 1: Setup + Data preparation
Semana 2: Core RAG/Agent implementation
Semana 3: Frontend + Integration
Semana 4: Testing + Optimization
Semana 5: Deployment
Semana 6: User testing + Iteration
```

**4. Critérios de Sucesso**
- Métricas técnicas (latência, accuracy, F1)
- Métricas de uso (usuários, queries, satisfação)
- Metas numéricas para cada métrica

**Template:**
```markdown
# Proposta: [Nome do Projeto]

## 1. Problema
[Descrever em 200 palavras]

## 2. Solução
[Descrever arquitetura em 300 palavras + diagrama]

## 3. Tecnologias
- Vector DB: [Nome] - Justificativa: [...]
- LLM: [Nome] - Justificativa: [...]
- Frontend: [Nome] - Justificativa: [...]

## 4. Cronograma
[Tabela ou Gantt chart]

## 5. Métricas
- Técnicas: [Listar]
- Negócio: [Listar]
- Metas: [Quantificar]
```

---

### Fase 2: Implementação (Semana 2-5)

**Boas Práticas de Código:**

**A) Estrutura de Projeto:**
```
meu-projeto/
├── data/                  # Dados brutos e processados
│   ├── raw/
│   └── processed/
├── src/                   # Código-fonte
│   ├── __init__.py
│   ├── data_pipeline.py   # ETL
│   ├── embeddings.py      # Geração de embeddings
│   ├── retrieval.py       # Busca
│   ├── llm.py             # Interface com LLM
│   └── agent.py           # Agente (se aplicável)
├── tests/                 # Testes unitários
│   ├── test_retrieval.py
│   └── test_llm.py
├── frontend/              # UI
│   ├── app.py             # Streamlit/Gradio
│   └── static/
├── notebooks/             # Exploração
│   └── exploracao.ipynb
├── configs/               # Configurações
│   └── config.yaml
├── requirements.txt       # Dependências
├── Dockerfile             # Container
├── README.md              # Documentação
└── .env.example           # Exemplo de variáveis de ambiente
```

**B) Versionamento (Git):**
```bash
# Branches
main          # Código em produção
develop       # Desenvolvimento
feature/rag   # Features específicas

# Commits descritivos
git commit -m "feat: Add reranking to retrieval pipeline"
git commit -m "fix: Handle timeout in LLM calls"
git commit -m "docs: Update README with deployment steps"
```

**C) Configuração e Secrets:**
```yaml
# configs/config.yaml
llm:
  provider: openai
  model: gpt-4
  temperature: 0.7
  max_tokens: 1000

vector_db:
  provider: chromadb
  path: ./db
  collection_name: curso_docs

retrieval:
  top_k: 5
  reranking: true
```

```python
# .env (NUNCA commitar!)
OPENAI_API_KEY=sk-...
ANTHROPIC_API_KEY=sk-ant-...

# .env.example (commitar)
OPENAI_API_KEY=your_key_here
ANTHROPIC_API_KEY=your_key_here
```

**D) Logging e Monitoramento:**
```python
import logging
from datetime import datetime

# Setup
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(f'logs/app_{datetime.now().date()}.log'),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)

# Uso
logger.info(f"Query received: {query}")
logger.info(f"Retrieved {len(docs)} documents in {elapsed:.2f}s")
logger.warning(f"LLM call took {duration}s (above threshold)")
logger.error(f"Failed to process query: {error}")
```

---

### Fase 3: Testes (Semana 4-5)

**A) Testes Unitários:**
```python
# tests/test_retrieval.py
import pytest
from src.retrieval import buscar_documentos

def test_busca_retorna_resultados():
    query = "O que é RAG?"
    docs = buscar_documentos(query, top_k=5)
    assert len(docs) == 5
    assert all(doc.score > 0 for doc in docs)

def test_busca_ordena_por_relevancia():
    query = "fotossíntese"
    docs = buscar_documentos(query, top_k=3)
    assert docs[0].score >= docs[1].score >= docs[2].score

def test_busca_vazia():
    query = ""
    with pytest.raises(ValueError):
        buscar_documentos(query)
```

**B) Testes de Integração:**
```python
def test_fluxo_completo_rag():
    # 1. Query
    query = "Explique transformers"

    # 2. Retrieval
    docs = buscar_documentos(query, top_k=3)
    assert len(docs) > 0

    # 3. Augmentation
    context = "\n\n".join([doc.content for doc in docs])
    prompt = f"Baseado em: {context}\n\nPergunta: {query}"

    # 4. Generation
    resposta = gerar_resposta(prompt)
    assert len(resposta) > 100
    assert "transformer" in resposta.lower()

    # 5. Verificar citações
    assert any(doc.source in resposta for doc in docs)
```

**C) Testes de Performance:**
```python
import time

def test_latencia_busca():
    query = "teste de performance"
    start = time.time()
    docs = buscar_documentos(query, top_k=10)
    elapsed = time.time() - start
    assert elapsed < 1.0, f"Busca demorou {elapsed:.2f}s (limite: 1s)"

def test_latencia_end_to_end():
    query = "Qual a capital da França?"
    start = time.time()
    resposta = pipeline_completo(query)
    elapsed = time.time() - start
    assert elapsed < 5.0, f"Pipeline demorou {elapsed:.2f}s (limite: 5s)"
```

---

### Fase 4: Deploy (Semana 5)

**Opção 1: Streamlit Cloud (Mais Fácil)**

```python
# frontend/app.py
import streamlit as st
from src.agent import meu_agente

st.title("🤖 Assistente Educacional")

query = st.text_input("Sua pergunta:")
if st.button("Perguntar"):
    with st.spinner("Pensando..."):
        resposta = meu_agente.run(query)
    st.write(resposta)
```

```bash
# Deploy
streamlit run frontend/app.py
# Conectar com GitHub
# Push → Auto-deploy
```

**Opção 2: Docker + Railway**

```dockerfile
# Dockerfile
FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["streamlit", "run", "frontend/app.py", "--server.port", "8080"]
```

```bash
# Deploy
railway login
railway init
railway up
```

**Opção 3: API REST + Frontend Separado**

```python
# backend/api.py
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Query(BaseModel):
    question: str

@app.post("/ask")
async def ask(query: Query):
    resposta = meu_agente.run(query.question)
    return {"answer": resposta}

# Rodar
# uvicorn backend.api:app --reload
```

```javascript
// frontend/app.js (React)
async function pergunta(question) {
    const response = await fetch('https://api.meuprojeto.com/ask', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({question})
    });
    const data = await response.json();
    return data.answer;
}
```

---

### Fase 5: Testes com Usuários (Semana 6)

**A) Recrutar Beta Testers:**
- Mínimo: 10 usuários
- Perfil: Professores ou alunos (público-alvo)
- Compromisso: Usar por 1 semana + dar feedback

**B) Instrumentação:**
```python
import mixpanel

mp = mixpanel.Mixpanel("YOUR_TOKEN")

# Track eventos
mp.track(user_id, 'Query Submitted', {
    'query_length': len(query),
    'timestamp': datetime.now()
})

mp.track(user_id, 'Answer Generated', {
    'latency': elapsed,
    'tokens_used': tokens,
    'cost': cost
})

mp.track(user_id, 'Feedback Given', {
    'rating': rating,  # 1-5 estrelas
    'useful': useful   # bool
})
```

**C) Coleta de Feedback:**

**Survey Pós-Uso (Google Forms):**
```
1. Quão útil foi a ferramenta? (1-5)
2. Quão precisa foram as respostas? (1-5)
3. Velocidade foi adequada? (Sim/Não)
4. O que você mais gostou?
5. O que você mudaria?
6. Usaria novamente? (Sim/Não)
7. Recomendaria para colegas? (NPS: 0-10)
```

**Entrevistas 1-on-1 (5 usuários):**
- 15-20 minutos
- Perguntas abertas
- Observar uso (screen recording)
- Identificar pain points

---

## 📊 Métricas e Análise

### Dashboard de Métricas (Criar com Streamlit):

```python
import streamlit as st
import pandas as pd
import plotly.express as px

# Carregar dados de uso
df = pd.read_csv('logs/usage_log.csv')

st.title("📊 Dashboard do Projeto")

# KPIs principais
col1, col2, col3, col4 = st.columns(4)
col1.metric("Total de Queries", df.shape[0])
col2.metric("Usuários Únicos", df['user_id'].nunique())
col3.metric("Satisfação Média", f"{df['rating'].mean():.1f}/5")
col4.metric("Latência Média", f"{df['latency'].mean():.2f}s")

# Gráficos
st.subheader("Queries ao Longo do Tempo")
fig1 = px.line(df.groupby('date').size().reset_index(name='count'),
               x='date', y='count')
st.plotly_chart(fig1)

st.subheader("Distribuição de Ratings")
fig2 = px.histogram(df, x='rating', nbins=5)
st.plotly_chart(fig2)

st.subheader("Top 10 Queries Mais Comuns")
top_queries = df['query'].value_counts().head(10)
st.bar_chart(top_queries)
```

---

## 📝 Documentação Final

### Componentes Obrigatórios:

**1. README.md (Completo)**
```markdown
# [Nome do Projeto]

## 🎯 Problema
[Descrição do problema educacional]

## 💡 Solução
[Como seu projeto resolve]

## 🏗️ Arquitetura
[Diagrama + explicação de componentes]

## 🚀 Como Rodar Localmente
```bash
# Passo 1: Clone
git clone https://github.com/seu-usuario/projeto.git

# Passo 2: Instale dependências
pip install -r requirements.txt

# Passo 3: Configure variáveis
cp .env.example .env
# Edite .env com suas API keys

# Passo 4: Rode
streamlit run frontend/app.py
```

## 📊 Resultados
- Métrica 1: [Valor]
- Métrica 2: [Valor]
- NPS: [Valor]

## 🎥 Demo
[Link para vídeo ou GIF]

## 📚 Documentação Técnica
[Link para docs/ folder]

## 🤝 Contato
[Email, LinkedIn]
```

**2. Documentação Técnica (docs/)**
- `docs/arquitetura.md` - Decisões técnicas e justificativas
- `docs/api.md` - Endpoints (se aplicável)
- `docs/deployment.md` - Como deployar em produção
- `docs/troubleshooting.md` - Problemas comuns e soluções

**3. Relatório de Resultados (5-10 páginas PDF)**

**Estrutura:**
- Resumo Executivo (1 página)
- Descrição Técnica (2 páginas)
- Resultados de Testes (2 páginas)
  - Gráficos de performance
  - Tabelas de métricas
  - Feedback qualitativo (quotes de usuários)
- Análise e Aprendizados (1-2 páginas)
  - O que deu certo
  - O que deu errado
  - Próximos passos
- Conclusão (0.5 página)

---

## 🎤 Apresentação Final (Semana 6)

### Formato: 15 min apresentação + 10 min Q&A

**Estrutura de Slides (10-15 slides):**

**Slides 1-2: Contexto**
- Problema educacional
- Por que IA é solução apropriada

**Slides 3-4: Solução Técnica**
- Arquitetura de alto nível (diagrama)
- Stack tecnológico (logos + justificativa)

**Slide 5: Demo Live**
- Mostrar aplicação funcionando
- 2-3 exemplos de uso

**Slides 6-8: Resultados**
- Métricas técnicas (gráficos)
- Feedback de usuários (quotes + NPS)
- Comparação antes/depois

**Slide 9: Desafios e Soluções**
- Top 3 desafios técnicos
- Como foram superados

**Slide 10: Aprendizados e Próximos Passos**
- Principais insights técnicos
- Roadmap futuro (se fosse continuar)

**Slide 11: Conclusão**
- Recapitulação em 1 frase
- Link para projeto (GitHub + deploy)
- Contato

---

## 🏆 Certificação "Educador de IA - Nível Técnico"

### Critérios de Avaliação (Total: 100 pontos):

**1. Implementação Técnica (40 pontos)**
- Código limpo e organizado (10)
- Funcionamento correto (15)
- Boas práticas (testes, logging) (10)
- Deploy em produção (5)

**2. Resultados e Impacto (30 pontos)**
- Métricas técnicas atingidas (10)
- Testes com usuários reais (10)
- Evidência de valor educacional (10)

**3. Documentação (15 pontos)**
- README completo (5)
- Docs técnicos (5)
- Relatório de resultados (5)

**4. Apresentação (15 pontos)**
- Clareza e estrutura (7)
- Demo funcional (5)
- Q&A (3)

**Aprovação:**
- ≥85 pontos: Certificação com Distinção
- 70-84 pontos: Certificação Regular
- <70 pontos: Revisão necessária

### Badge Digital Inclui:
- Nome completo
- Projeto: [Título]
- Competências técnicas certificadas (8)
- GitHub do projeto (link)
- Número de certificado verificável

---

## 💡 Dicas de Sucesso

### Do's:
✅ Comece simples, itere (MVP primeiro)
✅ Teste frequentemente (não deixe para última semana)
✅ Documente enquanto desenvolve (não depois)
✅ Peça feedback cedo (mentores, pares)
✅ Use versionamento (commits pequenos e frequentes)

### Don'ts:
❌ Escopo muito ambicioso (seja realista)
❌ Ignorar performance (latência importa)
❌ Esquecer tratamento de erros (vai quebrar)
❌ Deploy sem teste (teste localmente primeiro)
❌ Documentação vaga (seja específico)

---

## 📦 Recursos de Apoio

### Durante o Projeto:
- **Mentoria 1-on-1:** 2 sessões de 45 min
- **Office Hours:** Terças e quintas, 18h-19h
- **Canal Slack:** #projetos-tecnicos
- **Code Review:** Submeta PR, receba feedback

### Exemplos de Projetos Anteriores:
[Links para 5 projetos completos com código]

---

## 📅 Cronograma Detalhado

### Semana 1: Planejamento
- [ ] Escolher opção de projeto
- [ ] Escrever proposta (3-5 páginas)
- [ ] Submeter para aprovação
- [ ] Setup do repositório GitHub

### Semana 2: Data & Core
- [ ] Coletar e processar dados
- [ ] Implementar core (RAG ou agente base)
- [ ] Testes unitários básicos

### Semana 3: Features
- [ ] Adicionar features avançadas (reranking, tools, etc)
- [ ] Integração de componentes
- [ ] Testes de integração

### Semana 4: Frontend & Polish
- [ ] Criar interface de usuário
- [ ] Refatorar código
- [ ] Documentação inline (docstrings)

### Semana 5: Deploy & Testing
- [ ] Deploy em produção
- [ ] Testes de performance
- [ ] Instrumentação (analytics)
- [ ] Recrutar beta testers

### Semana 6: User Testing & Docs
- [ ] Coletar feedback de usuários
- [ ] Iterar baseado em feedback
- [ ] Escrever documentação completa
- [ ] Preparar apresentação
- [ ] Apresentar para banca

---

## 🎉 Parabéns!

Você completou a **Trilha B: Educador de IA - Nível Técnico**!

Agora você é capaz de:
✅ Entender profundamente como LLMs funcionam
✅ Implementar sistemas RAG robustos
✅ Criar agentes autônomos de IA
✅ Fazer fine-tuning de modelos
✅ Deployar aplicações em produção
✅ Documentar e apresentar projetos tecnicamente

**Próximos Passos:**
1. Publique seu projeto (GitHub + LinkedIn)
2. Escreva artigo técnico (Medium, Dev.to)
3. Contribua para open-source (LangChain, HuggingFace)
4. Continue aprendendo (campo muda rápido!)

---

## 📚 Referências

- **Livro:** *Building LLM Apps* - Valentina Alto
- **Curso:** Full Stack LLM Bootcamp (The Full Stack)
- **Comunidade:** LangChain Discord, HuggingFace Forums
- **Newsletter:** The Batch (DeepLearning.AI)

---

**© 2025 SuperProfessores | Licença MIT**

**Você é incrível! Bora codar!** 🚀👨‍💻👩‍💻
