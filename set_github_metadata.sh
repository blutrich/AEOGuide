#!/bin/bash

# Script to set GitHub repository description and topics
# Usage: ./set_github_metadata.sh

REPO="blutrich/AEOGuide"
DESCRIPTION="Comprehensive AI Engine Optimization (AEO) documentation and guides for appearing in ChatGPT, Perplexity, and Google AI Overviews. Includes C-level lectures, technical deep dives, implementation guides, and real-world case studies."

TOPICS=(
  "seo"
  "aeo"
  "ai-search"
  "chatgpt"
  "perplexity"
  "google-ai"
  "schema-markup"
  "robots-txt"
  "ai-optimization"
  "search-engine-optimization"
  "content-marketing"
  "digital-marketing"
)

echo "Setting repository metadata for $REPO"
echo ""

# Check if GitHub CLI is installed
if command -v gh &> /dev/null; then
    echo "Using GitHub CLI..."
    
    # Set description
    gh repo edit "$REPO" --description "$DESCRIPTION"
    
    # Add topics
    for topic in "${TOPICS[@]}"; do
        echo "Adding topic: $topic"
        gh repo edit "$REPO" --add-topic "$topic"
    done
    
    echo ""
    echo "✅ Repository metadata updated successfully!"
    echo "View at: https://github.com/$REPO"
    
elif [ -n "$GITHUB_TOKEN" ]; then
    echo "Using GitHub API with token..."
    
    # Convert topics array to JSON format
    TOPICS_JSON=$(printf '%s\n' "${TOPICS[@]}" | jq -R . | jq -s .)
    
    # Set description and topics via API
    curl -X PATCH \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Accept: application/vnd.github.v3+json" \
      "https://api.github.com/repos/$REPO" \
      -d "{
        \"description\": \"$DESCRIPTION\",
        \"topics\": $TOPICS_JSON
      }"
    
    echo ""
    echo "✅ Repository metadata updated successfully!"
    echo "View at: https://github.com/$REPO"
    
else
    echo "❌ GitHub CLI not found and GITHUB_TOKEN not set."
    echo ""
    echo "Please use one of these options:"
    echo ""
    echo "Option 1: Install GitHub CLI"
    echo "  brew install gh  # macOS"
    echo "  gh auth login"
    echo "  ./set_github_metadata.sh"
    echo ""
    echo "Option 2: Set GITHUB_TOKEN environment variable"
    echo "  export GITHUB_TOKEN=your_token_here"
    echo "  ./set_github_metadata.sh"
    echo ""
    echo "Option 3: Set manually via GitHub web interface"
    echo "  1. Go to: https://github.com/$REPO"
    echo "  2. Click the gear icon (⚙️) next to 'About'"
    echo "  3. Add description and topics"
    echo ""
    echo "Description:"
    echo "$DESCRIPTION"
    echo ""
    echo "Topics:"
    printf "  - %s\n" "${TOPICS[@]}"
fi

