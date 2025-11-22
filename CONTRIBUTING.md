# Contributing to Evidence Graph

Thank you for your interest in contributing! This project operates under the **Tri-Perimeter Contribution Framework (TPCF)** with graduated trust and emotional safety guarantees.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [TPCF Perimeter Model](#tpcf-perimeter-model)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Contribution Types](#contribution-types)
- [Reversibility & Emotional Safety](#reversibility--emotional-safety)
- [Code Standards](#code-standards)
- [Testing Requirements](#testing-requirements)
- [Documentation](#documentation)
- [Review Process](#review-process)
- [License](#license)

## Code of Conduct

This project adheres to a **Community-Centric Code of Practice (CCCP)**. By participating, you agree to:

- Treat all contributors with respect and empathy
- Provide constructive, kind feedback
- Respect emotional boundaries and contributor well-being
- Value diverse perspectives and experiences
- Report harassment or violations to maintainers

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for full details.

## TPCF Perimeter Model

### Current Perimeter: **Perimeter 3 (Community Sandbox)**

This project uses a **graduated trust model** with three security perimeters:

| Perimeter | Trust Level | Access | Examples |
|-----------|-------------|--------|----------|
| **P1: Core** | High Trust | Full write access, deploy keys | @Hyperpolymath (currently) |
| **P2: Contributors** | Earned Trust | Merge rights after 3+ merged PRs | TBD (Phase 2) |
| **P3: Community** | Open | Fork, PR, discuss | **YOU ARE HERE** |

### Your Current Access (Perimeter 3)

**You can:**
- ✅ Fork the repository
- ✅ Open issues and discussions
- ✅ Submit pull requests
- ✅ Comment on PRs and issues
- ✅ Report security vulnerabilities

**You cannot:**
- ❌ Push directly to `main` branch
- ❌ Merge pull requests
- ❌ Modify CI/CD configuration
- ❌ Access production infrastructure (Phase 2+)

### Advancing to Perimeter 2

After **3 merged pull requests** (substantive, not trivial), you may be invited to Perimeter 2:

- **Benefits**: Direct merge rights, mention in MAINTAINERS.md, invitation to monthly contributor calls
- **Responsibilities**: Code review duties, triage issues, mentor new contributors
- **Process**: Nomination by P1 maintainer, consensus among existing P2 contributors

## Getting Started

### Prerequisites

- Elixir 1.16+ & Erlang/OTP 26+
- Phoenix 1.7+
- Docker or Podman (for ArangoDB)
- Git 2.30+
- (Optional) Node.js 20+ for frontend development

### Setup

1. **Fork & Clone**
   ```bash
   git clone https://github.com/YOUR_USERNAME/bofig.git
   cd bofig
   git remote add upstream https://github.com/Hyperpolymath/bofig.git
   ```

2. **Install Dependencies**
   ```bash
   mix deps.get
   npm install --prefix assets
   ```

3. **Start Databases**
   ```bash
   docker-compose up -d
   # or: see Podmanfile.md for Podman
   ```

4. **Setup ArangoDB**
   ```bash
   iex -S mix
   iex> EvidenceGraph.ArangoDB.setup_database()
   iex> :init.stop()
   ```

5. **Load Test Data**
   ```bash
   mix run priv/repo/seeds.exs
   ```

6. **Run Tests**
   ```bash
   mix test
   ```

7. **Start Server**
   ```bash
   mix phx.server
   ```

   Visit http://localhost:4000/api/graphiql

## Development Workflow

### Branching Strategy

We use **GitHub Flow** (simple, trunk-based):

1. **Create Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make Changes**
   - Write code
   - Add tests
   - Update documentation

3. **Commit** (see [Commit Guidelines](#commit-guidelines))
   ```bash
   git add .
   git commit -m "feat: add PROMPT score visualization"
   ```

4. **Push & Open PR**
   ```bash
   git push origin feature/your-feature-name
   ```

   Open PR on GitHub, fill out template

5. **Respond to Review**
   - Address feedback
   - Push updates to same branch
   - Discussion happens in PR comments

6. **Merge** (by P1/P2 maintainer)
   - Squash and merge to `main`
   - Delete feature branch

### Commit Guidelines

We follow **Conventional Commits** with Elixir conventions:

**Format:**
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation only
- `style`: Formatting, missing semicolons, etc.
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Performance improvement
- `test`: Adding missing tests
- `chore`: Maintenance (deps, build, etc.)

**Scopes** (Elixir contexts):
- `claims`, `evidence`, `relationships`, `navigation`
- `graphql`, `arango`, `scoring`
- `ui`, `viz` (visualization), `zotero`

**Examples:**
```
feat(graphql): add mutation for batch evidence import

Closes #42

---

fix(arango): prevent AQL injection in search queries

- Use parameterized queries exclusively
- Add input validation tests
- Update SECURITY.md with mitigation

Reported-by: @security-researcher
CVE: CVE-2025-1234

---

docs(architecture): clarify PROMPT score calculation

- Add formula explanation
- Include audience weighting examples
- Fix typo in methodology description
```

## Contribution Types

### Code Contributions

**What we need:**
- Bug fixes (check GitHub issues labeled `good-first-issue`)
- Feature implementations (see ROADMAP.md for priorities)
- Performance improvements
- Test coverage expansion
- Security enhancements

**Where to start:**
- `good-first-issue` label: Small, well-defined tasks
- `help-wanted` label: Larger tasks, guidance available
- ROADMAP.md Month 2-6 items

### Documentation Contributions

**Highly valued!**
- README improvements (especially beginner-friendly)
- Architecture clarifications
- API examples (GraphQL queries)
- Tutorial videos or blog posts
- Translations (future: i18n support)

### Design Contributions

- UI/UX mockups for LiveView pages
- D3.js visualization improvements
- Accessibility (WCAG 2.1 AA) enhancements
- Brand identity (logos, style guide) - Phase 2

### Research Contributions

- User testing with journalists (Month 3, 6, 12)
- PROMPT framework validation
- Academic paper collaboration
- Ethics review (investigative journalism use cases)

## Reversibility & Emotional Safety

### 90-Day Withdrawal Window

Per **Palimpsest License v0.8**, you may withdraw your contributions within **90 days** of acceptance.

**Process:**
1. Email maintainers: reversibility@evidencegraph.org (or open GitHub issue)
2. Specify PR numbers or commit SHAs to revert
3. We will revert within 7 days, preserving project functionality
4. Your name removed from attribution (unless you prefer to keep it)

**Limitations:**
- Cannot revert if your code is now foundational (we'll discuss alternatives)
- Security fixes cannot be reverted (but you can request anonymization)
- After 90 days, reversibility is best-effort (not guaranteed)

### Emotional Temperature Metrics

We track and publish **contributor well-being metrics**:

- **Churn Rate**: Contributors who leave within 6 months (Target: <20%)
- **Review Turnaround**: Time from PR to first review (Target: <48 hours)
- **Merge Time**: PR open to merge (Target: <7 days)
- **Governance Transparency**: % of decisions documented publicly (Target: 100%)

See [MAINTAINERS.md](MAINTAINERS.md) for current metrics.

### No Coerced Labor

- **No obligations**: Contributing is 100% voluntary
- **Respect boundaries**: "No" is a complete sentence
- **Flexible timelines**: No pressure on PR delivery
- **Credit without commitment**: One-time contributions are valued

## Code Standards

### Elixir Style

Follow [Elixir Style Guide](https://github.com/christopheradams/elixir_style_guide):

- Use `snake_case` for variables, functions
- Use `PascalCase` for modules
- Prefer pattern matching over conditionals
- Document public functions with `@doc`
- Add `@spec` for public functions

**Run formatter:**
```bash
mix format
just format  # (if using justfile)
```

### Phoenix Conventions

- Use **contexts** for business logic (`EvidenceGraph.Claims`)
- Keep controllers thin (delegate to contexts)
- Use `changeset/2` for all data validation
- Leverage Ecto for database operations (no raw SQL/AQL unless necessary)

### GraphQL Conventions

- One resolver per query/mutation
- Use DataLoader to prevent N+1 queries
- Batch database calls when possible
- Return errors in standard format (`:ok/:error` tuples)

### Security

See [SECURITY.md](SECURITY.md) for detailed guidelines.

**Quick checklist:**
- ✅ Parameterize all database queries
- ✅ Validate input with Ecto changesets
- ✅ Never use `String.to_existing_atom/1` on user input
- ✅ Sanitize HTML output
- ✅ Use HTTPS in production (Phase 2)

## Testing Requirements

### Test Coverage

**Minimum:** 80% line coverage for new code

**Tools:**
```bash
mix test --cover
mix coveralls  # (add to deps for detailed report)
```

### Test Types

1. **Unit Tests** (`test/evidence_graph/`)
   - Test individual functions
   - Mock external dependencies (ArangoDB)

2. **Integration Tests** (`test/evidence_graph_web/`)
   - Test GraphQL queries/mutations
   - Test database operations

3. **Property-Based Tests** (future: StreamData)
   - Randomized input testing
   - Edge case discovery

### Writing Tests

**Example:**
```elixir
defmodule EvidenceGraph.ClaimsTest do
  use EvidenceGraph.DataCase

  describe "create_claim/1" do
    test "creates claim with valid attributes" do
      attrs = %{
        investigation_id: "inv_test",
        text: "Test claim",
        claim_type: :primary
      }

      assert {:ok, claim} = Claims.create_claim(attrs)
      assert claim.text == "Test claim"
    end

    test "requires investigation_id" do
      attrs = %{text: "Test"}
      assert {:error, changeset} = Claims.create_claim(attrs)
      assert %{investigation_id: ["can't be blank"]} = errors_on(changeset)
    end
  end
end
```

### GraphQL Tests

```elixir
test "query claims returns all claims", %{conn: conn} do
  query = """
  {
    claims(investigationId: "inv_test") {
      id
      text
    }
  }
  """

  conn = post(conn, "/api/graphql", %{"query" => query})
  assert %{"data" => %{"claims" => claims}} = json_response(conn, 200)
  assert length(claims) > 0
end
```

## Documentation

### Code Documentation

**Modules:**
```elixir
defmodule EvidenceGraph.Scoring do
  @moduledoc """
  PROMPT epistemological scoring framework.

  Provides functions for calculating and weighting PROMPT scores
  across 6 dimensions: Provenance, Replicability, Objective,
  Methodology, Publication, Transparency.

  See ARCHITECTURE.md for detailed framework description.
  """
end
```

**Functions:**
```elixir
@doc """
Calculate overall PROMPT score using weighted average.

## Parameters

- `scores`: Map of dimension scores (0-100)

## Returns

Float representing overall score (0.0-100.0)

## Examples

    iex> Scoring.calculate_overall(%{provenance: 90, replicability: 80})
    85.5
"""
@spec calculate_overall(map()) :: float()
def calculate_overall(scores) do
  # ...
end
```

### Markdown Documentation

Update when changing functionality:

- **README.md**: User-facing quick start
- **ARCHITECTURE.md**: Technical deep-dive
- **ROADMAP.md**: Future plans affected
- **docs/**: Specific guides (Zotero, database, etc.)

## Review Process

### What Reviewers Look For

1. **Correctness**: Does it work as intended?
2. **Tests**: Adequate coverage?
3. **Documentation**: Code and markdown updated?
4. **Style**: Follows Elixir conventions?
5. **Security**: No new vulnerabilities?
6. **Performance**: No obvious inefficiencies?

### Review Timeline

- **First review**: Within 48 hours (target)
- **Follow-up reviews**: Within 24 hours
- **Merge decision**: Within 7 days

### Handling Feedback

- **Be patient**: Reviews are volunteer time
- **Ask questions**: If feedback is unclear
- **Disagree respectfully**: Technical discussions are healthy
- **Learn**: Reviews are mentorship opportunities

### Stale PRs

- After 30 days of inactivity, PRs may be closed
- You can reopen anytime (no hard feelings!)
- If you need more time, just comment

## License

By contributing, you agree to license your work under the **dual MIT + Palimpsest v0.8** license (see [LICENSE.txt](LICENSE.txt)).

**You retain copyright**, but grant the project and users rights to use your contribution under these licenses.

### Contributor License Agreement (CLA)

**No formal CLA required.** Your PR submission implies:

1. You have the right to submit this contribution
2. You understand the 90-day reversibility window
3. You agree to the dual license
4. You accept the Code of Conduct

## Attribution

All contributors are credited in:

- `.well-known/humans.txt` (public contributors)
- CHANGELOG.md (for specific contributions)
- GitHub contributors page

To opt-out of attribution, mention in your PR.

## Questions?

- **General questions**: Open a GitHub Discussion
- **Bug reports**: Open an issue (use template)
- **Feature requests**: Open an issue (use template)
- **Security**: See SECURITY.md (private disclosure)
- **Governance**: See MAINTAINERS.md
- **Emotional safety**: reversibility@evidencegraph.org

## Resources

- **Elixir Guides**: https://hexdocs.pm/elixir/
- **Phoenix Guides**: https://hexdocs.pm/phoenix/
- **Absinthe Guides**: https://hexdocs.pm/absinthe/
- **ArangoDB Docs**: https://www.arangodb.com/docs/stable/
- **RSR Framework**: (link to rhodium docs when available)

---

**Thank you for contributing!** Every PR, issue, and comment makes this project better for investigative journalists worldwide. 🙏

*Last Updated: 2025-11-22*
*TPCF Perimeter: 3 (Community Sandbox)*
*Palimpsest License: v0.8*
