# Repository Metadata

## Description
Comprehensive AI Engine Optimization (AEO) documentation and guides for appearing in ChatGPT, Perplexity, and Google AI Overviews. Includes C-level lectures, technical deep dives, implementation guides, and real-world case studies.

## Topics/Tags
- seo
- aeo
- ai-search
- chatgpt
- perplexity
- google-ai
- schema-markup
- robots-txt
- ai-optimization
- search-engine-optimization
- content-marketing
- digital-marketing

## How to Set This on GitHub

### Option 1: Via GitHub Web Interface
1. Go to: https://github.com/blutrich/AEOGuide
2. Click the gear icon (⚙️) next to "About"
3. Add description: "Comprehensive AI Engine Optimization (AEO) documentation and guides for appearing in ChatGPT, Perplexity, and Google AI Overviews. Includes C-level lectures, technical deep dives, implementation guides, and real-world case studies."
4. Add topics: seo, aeo, ai-search, chatgpt, perplexity, google-ai, schema-markup, robots-txt, ai-optimization, search-engine-optimization, content-marketing, digital-marketing

### Option 2: Via GitHub API (using curl)
```bash
# Set description and topics
curl -X PATCH \
  -H "Authorization: token YOUR_GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/blutrich/AEOGuide \
  -d '{
    "description": "Comprehensive AI Engine Optimization (AEO) documentation and guides for appearing in ChatGPT, Perplexity, and Google AI Overviews. Includes C-level lectures, technical deep dives, implementation guides, and real-world case studies.",
    "topics": ["seo", "aeo", "ai-search", "chatgpt", "perplexity", "google-ai", "schema-markup", "robots-txt", "ai-optimization", "search-engine-optimization", "content-marketing", "digital-marketing"]
  }'
```

### Option 3: Using GitHub CLI (if installed)
```bash
gh repo edit blutrich/AEOGuide \
  --description "Comprehensive AI Engine Optimization (AEO) documentation and guides for appearing in ChatGPT, Perplexity, and Google AI Overviews. Includes C-level lectures, technical deep dives, implementation guides, and real-world case studies." \
  --add-topic seo \
  --add-topic aeo \
  --add-topic ai-search \
  --add-topic chatgpt \
  --add-topic perplexity \
  --add-topic google-ai \
  --add-topic schema-markup \
  --add-topic robots-txt \
  --add-topic ai-optimization \
  --add-topic search-engine-optimization \
  --add-topic content-marketing \
  --add-topic digital-marketing
```

