# Contributing Guidelines
## How to Contribute to AEO Guide Repository

---

## 🤝 Welcome Contributors!

Thank you for your interest in contributing to the AEO Guide repository! This document provides guidelines for contributing improvements, corrections, and new content.

---

## 📋 Contribution Types

### What We Welcome

✅ **Content Improvements:**
- Corrections to existing information
- Updates based on new research/data
- Clarifications and explanations
- Additional examples and case studies

✅ **New Content:**
- Platform-specific guides (new AI platforms)
- Industry-specific examples
- Additional tools and resources
- Translation to other languages

✅ **Technical Improvements:**
- Code snippet improvements
- Better formatting
- Additional validation steps
- Bug fixes

✅ **Documentation:**
- Better explanations
- More examples
- Improved structure
- Additional use cases

---

## 🚫 What We Don't Accept

❌ **Promotional Content:**
- Product promotions
- Affiliate links
- Spam or advertising

❌ **Inaccurate Information:**
- Unverified claims
- Outdated data
- Speculation without sources

❌ **Off-Topic Content:**
- Content not related to AEO
- Personal opinions without backing
- Controversial topics

---

## 🔄 Contribution Process

### Step 1: Fork the Repository

1. Go to: https://github.com/blutrich/AEOGuide
2. Click "Fork" button
3. Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/AEOGuide.git
   cd AEOGuide
   ```

---

### Step 2: Create a Branch

```bash
# Create a new branch for your changes
git checkout -b feature/your-feature-name

# Or for bug fixes
git checkout -b fix/description-of-fix
```

**Branch Naming:**
- `feature/` - New features or content
- `fix/` - Bug fixes or corrections
- `docs/` - Documentation improvements
- `update/` - Updates to existing content

---

### Step 3: Make Your Changes

**Guidelines:**
- Follow existing document structure
- Use Markdown formatting consistently
- Include sources for data/claims
- Test code snippets if applicable
- Update README.md if adding new documents

**Writing Style:**
- Clear and concise
- Professional tone
- Data-backed when possible
- Actionable and practical

---

### Step 4: Commit Your Changes

```bash
# Stage your changes
git add .

# Commit with descriptive message
git commit -m "Add: [Brief description of changes]"
```

**Commit Message Format:**
- `Add:` - New content
- `Fix:` - Bug fix or correction
- `Update:` - Update existing content
- `Docs:` - Documentation only
- `Refactor:` - Code/structure improvements

**Examples:**
- `Add: FAQ schema implementation guide for Shopify`
- `Fix: Correct robots.txt syntax error`
- `Update: Latest ChatGPT crawler information`
- `Docs: Improve README navigation`

---

### Step 5: Push and Create Pull Request

```bash
# Push to your fork
git push origin feature/your-feature-name
```

Then:
1. Go to your fork on GitHub
2. Click "New Pull Request"
3. Fill out the PR template (see below)
4. Submit for review

---

## 📝 Pull Request Template

### PR Title Format
```
[Type] Brief description
```

**Types:**
- `[Add]` - New content
- `[Fix]` - Bug fix
- `[Update]` - Update existing
- `[Docs]` - Documentation

**Example:** `[Add] Shopify schema implementation guide`

---

### PR Description Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] New content
- [ ] Bug fix
- [ ] Update to existing content
- [ ] Documentation improvement

## Changes Made
- Change 1
- Change 2
- Change 3

## Testing
- [ ] Tested code snippets (if applicable)
- [ ] Verified links work
- [ ] Checked formatting
- [ ] Reviewed for accuracy

## Sources
- [Source 1](URL)
- [Source 2](URL)

## Related Issues
Closes #(issue number) if applicable
```

---

## 📚 Content Guidelines

### Document Structure

**Standard Structure:**
1. Title and description
2. Executive Summary
3. Main content (numbered parts)
4. Action items/checklists
5. References
6. Related documents

**Formatting:**
- Use Markdown syntax
- Headers: `##` for main sections, `###` for subsections
- Code blocks: Use appropriate language tags
- Lists: Use `-` for unordered, numbers for ordered
- Emphasis: Use `**bold**` for emphasis

---

### Code Snippets

**Requirements:**
- Must be functional and tested
- Include comments explaining key parts
- Use placeholders clearly marked: `[YOUR_VALUE]`
- Include validation steps
- Show expected output/results

**Example:**
```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "[YOUR_COMPANY_NAME]",
  "url": "[YOUR_WEBSITE_URL]"
}
```

---

### Data and Statistics

**Requirements:**
- Must be from reliable sources
- Include source citations
- Include dates (when data was collected)
- Note if data is outdated
- Use "based on research" if specific source unavailable

**Citation Format:**
```markdown
**Source:** [Source Name](URL) - Date
```

---

### Examples and Case Studies

**Requirements:**
- Real-world examples preferred
- Generic examples acceptable if real ones unavailable
- Clearly mark if example is hypothetical
- Include context and results
- Make examples actionable

---

## 🔍 Review Process

### What We Review

1. **Accuracy:** Is information correct?
2. **Completeness:** Are all necessary details included?
3. **Clarity:** Is it easy to understand?
4. **Formatting:** Does it follow style guidelines?
5. **Sources:** Are claims backed by sources?
6. **Testing:** Do code snippets work?

---

### Review Timeline

- **Small changes:** 1-3 days
- **Medium changes:** 3-7 days
- **Large changes:** 1-2 weeks

We'll respond to all PRs within 7 days.

---

## 🐛 Reporting Issues

### Found an Error?

**Create an Issue:**
1. Go to: https://github.com/blutrich/AEOGuide/issues
2. Click "New Issue"
3. Use issue template (see below)

---

### Issue Template

```markdown
## Issue Type
- [ ] Error/Inaccuracy
- [ ] Outdated information
- [ ] Missing information
- [ ] Formatting issue
- [ ] Broken link
- [ ] Other

## Description
Clear description of the issue

## Location
Document: [filename]
Section: [section name]
Line: [if applicable]

## Expected vs Actual
What should it say vs what it says

## Suggested Fix
If you have a suggestion

## Sources
If you have sources to back up the fix
```

---

## 📖 Style Guide

### Writing Style

**Tone:**
- Professional but accessible
- Clear and direct
- Action-oriented
- Data-backed

**Voice:**
- Use "you" for direct address
- Use active voice
- Avoid jargon (or explain it)
- Be specific, not vague

---

### Formatting Standards

**Headers:**
- `#` - Document title only
- `##` - Main sections
- `###` - Subsections
- `####` - Sub-subsections (use sparingly)

**Lists:**
- Use `-` for unordered lists
- Use numbers for step-by-step instructions
- Use `[ ]` for checklists

**Code:**
- Use triple backticks with language tag
- Include comments for complex code
- Show expected output when helpful

**Emphasis:**
- `**bold**` for important terms
- `*italic*` for emphasis
- `` `code` `` for inline code

---

### Language and Terminology

**Preferred Terms:**
- "AI Engine Optimization" or "AEO" (not "AI SEO")
- "AI search engines" (not "AI chatbots")
- "Citations" (not "mentions" when referring to AI)
- "Schema markup" (not "structured data" - be consistent)

**Consistency:**
- Use same terms throughout
- Define acronyms on first use
- Be consistent with capitalization

---

## 🌍 Translations

### Contributing Translations

We welcome translations! 

**Process:**
1. Create new file: `FILENAME_[LANGUAGE].md`
2. Translate entire document
3. Maintain same structure
4. Update README.md to include translation
5. Submit PR

**Languages Priority:**
- Hebrew (he)
- Spanish (es)
- French (fr)
- German (de)
- Other languages welcome

---

## 🔧 Technical Contributions

### Code Improvements

**If improving code:**
- Test all code snippets
- Include error handling
- Add comments
- Show before/after if refactoring
- Include validation steps

---

### Tool Updates

**If adding/updating tools:**
- Verify tool still exists
- Test tool functionality
- Include pricing (if applicable)
- Include pros/cons
- Update comparison matrix

---

## 📊 Data Updates

### Updating Statistics

**If updating data:**
- Include source and date
- Note if data is new or updated
- Update all references to old data
- Add note if data conflicts with previous

**Format:**
```markdown
**Updated Data (January 2025):**
- New statistic: [value]
- Source: [Source Name](URL)
- Previous value: [old value] (for comparison)
```

---

## ✅ Quality Checklist

Before submitting, ensure:

- [ ] Content is accurate and verified
- [ ] Sources are cited
- [ ] Code snippets are tested
- [ ] Formatting is consistent
- [ ] Links work
- [ ] No typos or grammar errors
- [ ] Follows style guide
- [ ] README.md updated (if adding new doc)
- [ ] Commit message is descriptive
- [ ] PR description is complete

---

## 🎯 Priority Areas

### High Priority Contributions

1. **New Platform Guides:**
   - Claude search optimization
   - Microsoft Copilot optimization
   - Emerging AI platforms

2. **Industry-Specific Examples:**
   - E-commerce case studies
   - SaaS optimization
   - Local business optimization

3. **Tool Updates:**
   - New AEO tools
   - Updated pricing
   - Tool comparisons

4. **Data Updates:**
   - Latest traffic impact data
   - New case studies
   - Updated statistics

---

## 💬 Communication

### Questions?

- **Open an Issue:** For questions or discussions
- **Start Discussion:** For broader topics
- **Email:** (if provided in repository)

### Feedback

We welcome feedback on:
- Content quality
- Missing information
- Confusing sections
- Improvement suggestions

---

## 📜 License

By contributing, you agree that your contributions will be licensed under the same license as the repository.

---

## 🙏 Thank You!

Your contributions help make AEO optimization accessible to everyone. Thank you for taking the time to improve this resource!

---

## 📝 Quick Reference

**Fork → Branch → Edit → Commit → Push → PR**

**Questions?** Open an issue  
**Found a bug?** Open an issue  
**Have an idea?** Open an issue or discussion  
**Ready to contribute?** Follow the process above!

---

*Last Updated: January 2025*

