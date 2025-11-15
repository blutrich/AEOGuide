# Agentic Browser Instructions: AEO Audit & Fix
## Copy-Paste Instructions for AI Agents to Audit and Fix AEO

---

## Instructions for AI Agent

**Your Task:** Audit a website for AEO (AI Engine Optimization) compliance and provide actionable fixes.

**Website URL:** [INSERT URL HERE]

**Follow these steps in order. Document all findings.**

---

## PHASE 1: INITIAL SITE AUDIT

### Step 1.1: Access the Website
```
ACTION: Navigate to [WEBSITE_URL]
VERIFY: Site loads successfully
DOCUMENT: Site title, main navigation, content structure
```

### Step 1.2: Check robots.txt
```
ACTION: Navigate to [WEBSITE_URL]/robots.txt
CHECK:
- Is robots.txt accessible?
- Does it allow ChatGPT-User?
- Does it allow GPTBot?
- Does it allow PerplexityBot?
- Does it allow Googlebot?
- Are important pages blocked?

DOCUMENT FINDINGS:
- [ ] robots.txt accessible: YES/NO
- [ ] ChatGPT-User allowed: YES/NO
- [ ] GPTBot allowed: YES/NO
- [ ] PerplexityBot allowed: YES/NO
- [ ] Googlebot allowed: YES/NO
- [ ] Critical pages blocked: YES/NO (list if yes)

FIX IF NEEDED:
If any AI crawler is blocked, recommend:
User-agent: ChatGPT-User
Allow: /
Disallow: /admin/
Disallow: /private/

User-agent: GPTBot
Allow: /
Disallow: /admin/

User-agent: PerplexityBot
Allow: /
Disallow: /admin/

User-agent: Googlebot
Allow: /
Disallow: /admin/
```

### Step 1.3: Check Sitemap
```
ACTION: Navigate to [WEBSITE_URL]/sitemap.xml
CHECK:
- Does sitemap exist?
- Is it accessible?
- Are important pages included?
- Is lastmod date recent?

DOCUMENT FINDINGS:
- [ ] Sitemap exists: YES/NO
- [ ] Sitemap accessible: YES/NO
- [ ] Recent lastmod dates: YES/NO
- [ ] Important pages included: YES/NO
```

---

## PHASE 2: SCHEMA MARKUP AUDIT

### Step 2.1: Check Homepage for Schema
```
ACTION: Navigate to homepage [WEBSITE_URL]
ACTION: View page source (Ctrl+U or Cmd+U)
ACTION: Search for "application/ld+json"

CHECK:
- Does Organization schema exist?
- Is it valid JSON?
- Does it include: name, url, logo, description, contactPoint?

DOCUMENT FINDINGS:
- [ ] Organization schema present: YES/NO
- [ ] Valid JSON format: YES/NO
- [ ] Includes name: YES/NO
- [ ] Includes logo: YES/NO
- [ ] Includes contact info: YES/NO

FIX IF MISSING:
Add this schema to homepage <head>:
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "[COMPANY_NAME]",
  "url": "[WEBSITE_URL]",
  "logo": "[LOGO_URL]",
  "description": "[COMPANY_DESCRIPTION]",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "[PHONE]",
    "contactType": "customer service",
    "email": "[EMAIL]"
  },
  "sameAs": [
    "[FACEBOOK_URL]",
    "[TWITTER_URL]",
    "[LINKEDIN_URL]"
  ]
}
</script>
```

### Step 2.2: Check Service/Product Pages for FAQ Schema
```
ACTION: Identify top 5 service/product pages
ACTION: For each page:
  - Navigate to page
  - View page source
  - Search for "FAQPage" or "application/ld+json"

CHECK:
- Does FAQPage schema exist?
- Are there 3-5 questions?
- Are answers complete (40+ words)?

DOCUMENT FINDINGS:
Page 1: [URL]
- [ ] FAQPage schema: YES/NO
- [ ] Number of questions: [COUNT]
- [ ] Answers complete: YES/NO

Page 2: [URL]
- [ ] FAQPage schema: YES/NO
- [ ] Number of questions: [COUNT]
- [ ] Answers complete: YES/NO

[Repeat for all pages]

FIX IF MISSING:
Add FAQPage schema to each service page:
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "[QUESTION_1]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[ANSWER_1 - 40+ words]"
      }
    },
    {
      "@type": "Question",
      "name": "[QUESTION_2]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[ANSWER_2 - 40+ words]"
      }
    }
  ]
}
</script>
```

### Step 2.3: Check Blog Posts for Article Schema
```
ACTION: Navigate to 3 blog posts
ACTION: View page source
ACTION: Search for "Article" or "@type": "Article"

CHECK:
- Does Article schema exist?
- Includes: headline, datePublished, author, image?
- Is datePublished in ISO format (YYYY-MM-DD)?

DOCUMENT FINDINGS:
Post 1: [URL]
- [ ] Article schema: YES/NO
- [ ] Includes headline: YES/NO
- [ ] Includes datePublished: YES/NO
- [ ] Includes author: YES/NO
- [ ] Includes image: YES/NO

[Repeat for all posts]

FIX IF MISSING:
Add Article schema to blog posts:
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "[POST_TITLE]",
  "description": "[POST_EXCERPT]",
  "image": "[FEATURED_IMAGE_URL]",
  "datePublished": "[PUBLISH_DATE_ISO]",
  "dateModified": "[MODIFIED_DATE_ISO]",
  "author": {
    "@type": "Person",
    "name": "[AUTHOR_NAME]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[COMPANY_NAME]",
    "logo": {
      "@type": "ImageObject",
      "url": "[LOGO_URL]"
    }
  }
}
</script>
```

### Step 2.4: Validate Schema with Google Rich Results Test
```
ACTION: For each page with schema:
  - Go to: https://search.google.com/test/rich-results
  - Enter page URL
  - Click "Test URL"
  - Document results

DOCUMENT FINDINGS:
Page: [URL]
- [ ] Schema valid: YES/NO
- [ ] Errors: [LIST ERRORS]
- [ ] Warnings: [LIST WARNINGS]

FIX ERRORS:
- Fix JSON syntax errors
- Add missing required fields
- Correct invalid values
```

---

## PHASE 3: CONTENT STRUCTURE AUDIT

### Step 3.1: Check Question-Based Headings
```
ACTION: Review top 5 pages
ACTION: Check for H2/H3 headings that are questions

CHECK:
- Are headings question-based? (How, What, Why, When, Where)
- Do headings match user queries?
- Are there 3-5 question headings per page?

DOCUMENT FINDINGS:
Page: [URL]
- [ ] Question-based headings: YES/NO
- [ ] Number of question headings: [COUNT]
- [ ] Headings match queries: YES/NO

FIX IF NEEDED:
Convert statements to questions:
BAD: "Our Services"
GOOD: "What Services Do You Offer?"

BAD: "Pricing Information"
GOOD: "How Much Does It Cost?"

BAD: "Contact Us"
GOOD: "How Can I Contact You?"
```

### Step 3.2: Check Direct Answers in First Sentences
```
ACTION: For each question heading, check first 1-2 sentences

CHECK:
- Does first sentence directly answer the question?
- Is answer 40-80 words?
- Is answer clear and complete?

DOCUMENT FINDINGS:
Page: [URL]
Heading: "[HEADING]"
- [ ] Direct answer in first sentence: YES/NO
- [ ] Answer length: [WORD_COUNT]
- [ ] Answer complete: YES/NO

FIX IF NEEDED:
Restructure content:
BAD:
## How Much Does It Cost?
There are many factors that determine pricing. Pricing varies based on several considerations...

GOOD:
## How Much Does It Cost?
Professional services typically range from $500 to $5,000 depending on scope. Basic packages start at $500 for standard services, while comprehensive solutions can reach $5,000 for enterprise-level projects...
```

### Step 3.3: Check Content Freshness
```
ACTION: Check for publication dates, "last updated" dates

CHECK:
- Is publication date visible?
- Is "last updated" date visible?
- Are dates recent (within 30 days for time-sensitive content)?

DOCUMENT FINDINGS:
Page: [URL]
- [ ] Publication date visible: YES/NO
- [ ] Last updated date visible: YES/NO
- [ ] Dates recent: YES/NO
- [ ] Date format: [FORMAT]

FIX IF MISSING:
Add dates to content:
- Add "Published: [DATE]" 
- Add "Last Updated: [DATE]"
- Use ISO format: YYYY-MM-DD
```

---

## PHASE 4: E-E-A-T SIGNALS AUDIT

### Step 4.1: Check Author Information
```
ACTION: Check blog posts and key pages for author info

CHECK:
- Is author name visible?
- Are author credentials listed?
- Is author bio present?
- Does author have expertise signals?

DOCUMENT FINDINGS:
Page: [URL]
- [ ] Author name visible: YES/NO
- [ ] Author credentials: YES/NO
- [ ] Author bio: YES/NO
- [ ] Expertise signals: YES/NO

FIX IF MISSING:
Add author information:
- Author name: [NAME]
- Credentials: [CREDENTIALS]
- Bio: "[BIO - 50+ words]"
- Experience: "[X years of experience]"
```

### Step 4.2: Check Contact Information
```
ACTION: Check homepage and key pages for contact info

CHECK:
- Is phone number visible?
- Is email visible?
- Is address visible?
- Is contact info in schema?

DOCUMENT FINDINGS:
- [ ] Phone visible: YES/NO
- [ ] Email visible: YES/NO
- [ ] Address visible: YES/NO
- [ ] Contact in schema: YES/NO

FIX IF MISSING:
Add contact information to:
- Homepage footer
- Contact page
- Organization schema
```

### Step 4.3: Check Trust Signals
```
ACTION: Check for trust indicators

CHECK:
- Customer reviews/testimonials?
- Security badges?
- Certifications?
- Privacy policy link?
- Terms of service link?

DOCUMENT FINDINGS:
- [ ] Reviews/testimonials: YES/NO
- [ ] Security badges: YES/NO
- [ ] Certifications: YES/NO
- [ ] Privacy policy: YES/NO
- [ ] Terms of service: YES/NO
```

---

## PHASE 5: AI PLATFORM TESTING

### Step 5.1: Test in ChatGPT
```
ACTION: Open ChatGPT (new conversation, incognito mode)
ACTION: Enable web search
ACTION: Ask: "What is [COMPANY_NAME]?"
ACTION: Ask: "[MAIN_SERVICE] in [LOCATION]"
ACTION: Ask: "How much does [SERVICE] cost?"

DOCUMENT FINDINGS:
Query: "What is [COMPANY_NAME]?"
- [ ] Appears in results: YES/NO
- [ ] Citation present: YES/NO
- [ ] Information accurate: YES/NO
- [ ] Citation URL: [URL]

Query: "[MAIN_SERVICE] in [LOCATION]"
- [ ] Appears in results: YES/NO
- [ ] Citation present: YES/NO
- [ ] Information accurate: YES/NO

FIX IF NOT APPEARING:
- Ensure robots.txt allows ChatGPT-User
- Add schema markup
- Restructure content with question headings
- Add direct answers
```

### Step 5.2: Test in Perplexity
```
ACTION: Open Perplexity
ACTION: Search: "[COMPANY_NAME]"
ACTION: Search: "[MAIN_SERVICE]"

DOCUMENT FINDINGS:
Query: "[COMPANY_NAME]"
- [ ] Appears in results: YES/NO
- [ ] Citation present: YES/NO
- [ ] Information accurate: YES/NO

FIX IF NOT APPEARING:
- Submit to Perplexity Pages
- Ensure content is clear and extractable
- Add schema markup
```

### Step 5.3: Test in Google AI Overviews
```
ACTION: Search Google for relevant queries
ACTION: Check if AI Overviews appear
ACTION: Check if site is cited

DOCUMENT FINDINGS:
Query: "[RELEVANT_QUERY]"
- [ ] AI Overview appears: YES/NO
- [ ] Site cited: YES/NO
- [ ] Citation position: [POSITION]

FIX IF NOT APPEARING:
- Improve traditional SEO (still matters)
- Add schema markup
- Optimize for passage-level quality
- Build topical authority
```

---

## PHASE 6: TECHNICAL SEO AUDIT

### Step 6.1: Check Page Speed
```
ACTION: Test homepage with PageSpeed Insights
ACTION: URL: https://pagespeed.web.dev/

CHECK:
- Mobile score: [SCORE]
- Desktop score: [SCORE]
- Core Web Vitals: PASS/FAIL

DOCUMENT FINDINGS:
- [ ] Mobile score: [SCORE]/100
- [ ] Desktop score: [SCORE]/100
- [ ] LCP: [TIME]
- [ ] FID: [TIME]
- [ ] CLS: [SCORE]

FIX IF SLOW:
- Optimize images
- Minify CSS/JS
- Enable caching
- Use CDN
```

### Step 6.2: Check Mobile Responsiveness
```
ACTION: Test site on mobile viewport
ACTION: Check if content is readable

CHECK:
- Is site mobile-friendly?
- Is content accessible on mobile?
- Are buttons clickable?

DOCUMENT FINDINGS:
- [ ] Mobile-friendly: YES/NO
- [ ] Content readable: YES/NO
- [ ] Buttons clickable: YES/NO
```

### Step 6.3: Check JavaScript Rendering
```
ACTION: Disable JavaScript
ACTION: Reload page
ACTION: Check if critical content is visible

CHECK:
- Is critical content in initial HTML?
- Does content load without JavaScript?

DOCUMENT FINDINGS:
- [ ] Critical content in HTML: YES/NO
- [ ] Content loads without JS: YES/NO

FIX IF NEEDED:
- Ensure critical content in initial HTML
- Use server-side rendering
- Avoid JavaScript-only content
```

---

## PHASE 7: COMPETITIVE ANALYSIS

### Step 7.1: Identify Competitors
```
ACTION: Search for "[MAIN_SERVICE] [LOCATION]"
ACTION: Identify top 3 competitors
ACTION: Document competitor URLs

DOCUMENT FINDINGS:
Competitor 1: [URL]
Competitor 2: [URL]
Competitor 3: [URL]
```

### Step 7.2: Test Competitors in AI Platforms
```
ACTION: Test each competitor in ChatGPT
ACTION: Check if they appear

DOCUMENT FINDINGS:
Competitor: [URL]
- [ ] Appears in ChatGPT: YES/NO
- [ ] Citation present: YES/NO
- [ ] What they're cited for: [TOPIC]

ANALYSIS:
- What are competitors doing that we're not?
- What schema do they have?
- What content structure do they use?
```

---

## PHASE 8: GENERATE FIX REPORT

### Step 8.1: Create Priority List
```
CRITICAL FIXES (Do First):
1. [ISSUE] - [FIX]
2. [ISSUE] - [FIX]
3. [ISSUE] - [FIX]

HIGH PRIORITY:
1. [ISSUE] - [FIX]
2. [ISSUE] - [FIX]

MEDIUM PRIORITY:
1. [ISSUE] - [FIX]
2. [ISSUE] - [FIX]

LOW PRIORITY:
1. [ISSUE] - [FIX]
```

### Step 8.2: Create Implementation Checklist
```
WEEK 1:
- [ ] Fix robots.txt (allow AI crawlers)
- [ ] Add Organization schema to homepage
- [ ] Add FAQPage schema to top 3 service pages
- [ ] Validate schema with Google Rich Results Test

WEEK 2:
- [ ] Add FAQPage to remaining service pages
- [ ] Restructure content with question headings
- [ ] Add direct answers to first sentences
- [ ] Add author information to blog posts

WEEK 3:
- [ ] Add Article schema to blog posts
- [ ] Add publication/update dates
- [ ] Test in ChatGPT, Perplexity, Google AI
- [ ] Monitor results
```

### Step 8.3: Create Code Snippets
```
For each fix needed, provide:
1. Exact code to add
2. Where to add it (file, location)
3. How to validate
```

---

## PHASE 9: VALIDATION & MONITORING

### Step 9.1: Re-test After Fixes
```
ACTION: After implementing fixes, re-run all tests
ACTION: Compare before/after results

DOCUMENT IMPROVEMENTS:
Before:
- ChatGPT visibility: NO
- Schema markup: 0 pages
- Question headings: 0

After:
- ChatGPT visibility: YES
- Schema markup: 5 pages
- Question headings: 15
```

### Step 9.2: Set Up Monitoring
```
RECOMMEND TOOLS:
- Google Search Console (free)
- Google Rich Results Test (free)
- Profound ($120+/mo) - AI visibility tracking
- OmniSEO (free tier) - AI visibility tracking

MONITORING SCHEDULE:
- Weekly: Test in ChatGPT, Perplexity
- Monthly: Full schema audit
- Quarterly: Complete AEO audit
```

---

## FINAL REPORT TEMPLATE

```
# AEO Audit Report for [WEBSITE_URL]

## Executive Summary
- Overall AEO Score: [SCORE]/100
- Critical Issues: [COUNT]
- High Priority: [COUNT]
- Medium Priority: [COUNT]

## Key Findings
1. [FINDING]
2. [FINDING]
3. [FINDING]

## Immediate Actions Required
1. [ACTION]
2. [ACTION]
3. [ACTION]

## Implementation Timeline
Week 1: [TASKS]
Week 2: [TASKS]
Week 3: [TASKS]

## Expected Results
- AI Citations: [CURRENT] → [TARGET]
- ChatGPT Visibility: [CURRENT] → [TARGET]
- Schema Coverage: [CURRENT] → [TARGET]

## Code Snippets
[ALL CODE SNIPPETS NEEDED]

## Validation Steps
[STEP-BY-STEP VALIDATION]
```

---

## QUICK REFERENCE CHECKLIST

```
AEO AUDIT CHECKLIST:

TECHNICAL:
[ ] robots.txt allows AI crawlers
[ ] Sitemap exists and is accessible
[ ] Site loads fast (<3 seconds)
[ ] Mobile-friendly
[ ] Critical content in HTML (not JS-only)

SCHEMA MARKUP:
[ ] Organization schema on homepage
[ ] FAQPage schema on service pages
[ ] Article schema on blog posts
[ ] HowTo schema on tutorials (if applicable)
[ ] Product schema on product pages (if applicable)
[ ] All schema validated with Google Rich Results Test

CONTENT STRUCTURE:
[ ] Question-based headings (H2, H3)
[ ] Direct answers in first 1-2 sentences
[ ] 3-5 questions per service page
[ ] Answers 40-80 words

E-E-A-T SIGNALS:
[ ] Author information visible
[ ] Author credentials listed
[ ] Contact information visible
[ ] Publication dates visible
[ ] "Last updated" dates visible
[ ] Trust signals (reviews, certifications)

AI VISIBILITY:
[ ] Appears in ChatGPT (tested)
[ ] Appears in Perplexity (tested)
[ ] Appears in Google AI Overviews (tested)
[ ] Citations present and accurate
```

---

## NOTES FOR AI AGENT

1. **Document Everything:** Take screenshots, save URLs, note findings
2. **Be Specific:** Don't say "add schema" - say "add FAQPage schema with 3 questions to /services page"
3. **Provide Code:** Always include exact code snippets
4. **Validate:** Always test fixes with Google Rich Results Test
5. **Prioritize:** Focus on critical fixes first (robots.txt, schema markup)
6. **Test Real Queries:** Use actual user queries, not generic ones
7. **Compare Competitors:** See what competitors are doing
8. **Monitor Results:** Set up tracking to measure improvements

---

## END OF INSTRUCTIONS

**Next Steps:**
1. Replace [WEBSITE_URL] with actual URL
2. Replace [COMPANY_NAME] with actual company name
3. Follow each phase in order
4. Document all findings
5. Generate final report with fixes

**Time Estimate:** 2-4 hours for complete audit
**Priority:** Start with Phase 1 (robots.txt) and Phase 2 (schema markup)

