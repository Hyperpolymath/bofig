# Project Maintainers & Governance

## Current Maintainers

### Perimeter 1 (Core Team)

| Name | GitHub | Role | Joined | Areas |
|------|--------|------|--------|-------|
| @Hyperpolymath | [@Hyperpolymath](https://github.com/Hyperpolymath) | Project Lead | 2025-11-22 | Architecture, PhD Research, NUJ Network |

### Perimeter 2 (Contributors)

*No P2 contributors yet. Earn P2 status after 3+ merged PRs (see CONTRIBUTING.md)*

### Perimeter 3 (Community)

**Everyone else!** Open contribution welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for how to participate.

## Governance Model

### Decision-Making Framework

**Decision Tiers:**

| Tier | Scope | Decision Maker(s) | Process |
|------|-------|-------------------|---------|
| **1. Critical** | License changes, CoC amendments, infrastructure access | P1 consensus + community input (30-day RFC) | RFC → Discussion → Vote |
| **2. Major** | Architecture changes, breaking API changes, dependency changes | P1 decision + P2 consultation | Design doc → Review → Approval |
| **3. Minor** | New features, refactors, documentation | P2 approval (2 reviewers) | PR → Review → Merge |
| **4. Trivial** | Bug fixes, typos, style | Single P2 reviewer | PR → Quick review → Merge |

### RFC (Request for Comments) Process

For Tier 1 decisions:

1. **Draft RFC**: Maintainer writes proposal in `docs/rfcs/NNNN-title.md`
2. **Publication**: RFC announced in GitHub Discussion
3. **Comment Period**: Minimum 30 days for community feedback
4. **Revision**: Author addresses feedback, updates RFC
5. **Vote**: P1 maintainers vote (simple majority, or consensus for critical changes)
6. **Implementation**: Accepted RFCs move to ROADMAP.md
7. **Rejection**: Rejected RFCs remain as historical record with reasoning

**Example RFCs:**
- RFC 0001: Switching from ArangoDB to PostgreSQL+AgensGraph
- RFC 0002: Adding user authentication (Phase 2)
- RFC 0003: IPFS integration design
- RFC 0004: Multi-tenancy support

### Consensus vs. Voting

**Prefer consensus:**
- Discuss until all parties are satisfied (or "can live with" decision)
- Explicitly ask for objections
- Document dissenting opinions

**Use voting when:**
- Consensus cannot be reached after good-faith effort
- Time-sensitive decisions (security patches)
- Clear binary choice (yes/no)

**Voting Rules:**
- P1 maintainers: 1 vote each
- Simple majority (>50%) for most decisions
- Supermajority (≥67%) for critical decisions (license, CoC, governance changes)
- Tie-breaker: Project Lead (@Hyperpolymath initially)

## Responsibilities

### Perimeter 1 (Core Team)

**Must:**
- Respond to security issues within 24 hours
- Review PRs within 48 hours (or delegate)
- Publish monthly progress update
- Maintain emotional temperature metrics (see below)
- Uphold Code of Conduct fairly
- Make decisions transparently (document in GitHub)

**May:**
- Merge own PRs for trivial changes (docs, typos)
- Delegate reviews to P2 contributors
- Take breaks (no guilt - announce hiatus in advance if >2 weeks)

**Must Not:**
- Make unilateral decisions on Tier 1 matters
- Push directly to `main` without PR (except emergencies)
- Abuse position for personal gain
- Violate contributor trust or confidentiality

### Perimeter 2 (Contributors)

**Must:**
- Review assigned PRs within 72 hours
- Mentor newcomers (answer questions, guide contributions)
- Participate in monthly contributor calls (when established)
- Follow Code of Conduct

**May:**
- Merge PRs after review by 1 other P2/P1 maintainer
- Triage issues (labeling, requesting more info)
- Close stale PRs/issues (after 30 days inactivity)

**Benefits:**
- Listed in MAINTAINERS.md and .well-known/humans.txt
- Invitation to private contributor chat (Phase 2)
- Early access to roadmap discussions
- Potential co-authorship on academic papers (for research contributors)

### Perimeter 3 (Community)

**Expectations:**
- Follow Code of Conduct
- Respect maintainer time (they're volunteers)
- Search existing issues before opening duplicates
- Provide reproduction steps for bugs

**No Obligations:**
- No pressure to respond quickly (or at all)
- Can withdraw contributions within 90 days
- Can step away anytime without explanation

## Emotional Temperature Dashboard

Per **Palimpsest License v0.8**, we publish metrics on contributor well-being:

### Current Metrics (Phase 1)

**Data Collection Period**: 2025-11-22 onwards (initial baseline)

| Metric | Current Value | Target | Status | Trend |
|--------|--------------|--------|--------|-------|
| **Contributor Churn** (% leaving within 6 months) | 0% (N=1, new project) | <20% | ✅ Baseline | - |
| **Review Turnaround** (hours to first review) | N/A (no PRs yet) | <48h | 📊 TBD | - |
| **PR Merge Time** (days from open to merge) | N/A | <7 days | 📊 TBD | - |
| **Issue Response Time** (hours to first response) | N/A | <24h | 📊 TBD | - |
| **Governance Transparency** (% decisions documented) | 100% | 100% | ✅ On Track | ▲ Improving |
| **Code of Conduct Violations** (count per quarter) | 0 | 0 | ✅ Excellent | - |
| **Reversibility Requests** (contributions withdrawn) | 0 | N/A | ℹ️ Info Only | - |
| **Maintainer Burnout Risk** (subjective self-report, 1-10) | 3 (low) | <5 | ✅ Healthy | - |

**Interpretation:**
- ✅ Green: Meeting or exceeding target
- ⚠️ Yellow: Approaching threshold, needs attention
- 🔴 Red: Below target, immediate action required
- 📊 TBD: Insufficient data yet
- ℹ️ Info Only: Informational metric, no target

### How Metrics Are Calculated

**Contributor Churn:**
- Tracked via GitHub API (contributor activity)
- Counts contributors with ≥1 merged PR who have no activity in last 6 months
- Excludes one-time contributors (by design)

**Review/Merge Times:**
- Automated via GitHub Actions (webhook on PR events)
- Median time calculated weekly
- Outliers (>30 days) investigated for patterns

**Governance Transparency:**
- Manual audit quarterly
- Checks: Are all decisions in GitHub Issues/Discussions? Are RFCs published?
- Aiming for 100% (no backroom decisions)

**Maintainer Burnout:**
- Self-reported monthly by P1/P2 maintainers
- Scale: 1 (energized) to 10 (burned out)
- Triggers discussion if any maintainer reports >7

### Intervention Strategies

If metrics decline:

1. **Slow Review Times?**
   - Recruit more P2 reviewers
   - Reduce PR scope requirements
   - Pause new feature PRs temporarily

2. **High Churn?**
   - Exit interviews with departing contributors
   - Address common pain points (docs, onboarding)
   - Review Code of Conduct enforcement

3. **Maintainer Burnout?**
   - Rotate responsibilities
   - Recruit co-maintainers
   - Reduce project scope (pause Phase 2 items)

## Communication Channels

### Public

- **GitHub Issues**: Bug reports, feature requests
- **GitHub Discussions**: General questions, ideas, RFCs
- **Documentation**: README, ARCHITECTURE, ROADMAP

### Semi-Public (P2+)

*Phase 2:*
- **Matrix/Discord**: Real-time chat for contributors
- **Monthly Calls**: Video sync (recorded, transcripts published)

### Private (P1 only)

- **Email**: security@evidencegraph.org (security issues)
- **Email**: conduct@evidencegraph.org (Code of Conduct reports)
- **Signal/Matrix**: Encrypted chat for sensitive governance

## Conflict Resolution

### Between Contributors

1. **Direct Dialogue**: Encouraged to resolve privately (if safe)
2. **Mediation**: P2 contributor acts as neutral facilitator
3. **Escalation**: P1 maintainer makes decision if needed

### With Maintainers

1. **Appeal**: Contact different P1 maintainer or governance email
2. **Third-Party**: Suggest external mediator (community ombudsperson, future)
3. **Fork**: If irreconcilable, forking is a legitimate option (we'll still credit your work!)

### Maintainer Accountability

- P1 maintainers are also bound by Code of Conduct
- Violations handled by other P1 maintainers or external party
- Serious violations may result in maintainer removal (community vote)

## Succession Planning

### Adding Maintainers

**Perimeter 2 Promotion:**
- After 3+ merged PRs (substantive, not trivial)
- Nomination by P1 maintainer
- Consensus among existing P2 contributors

**Perimeter 1 Promotion:**
- After 6+ months as P2 contributor
- Demonstrated technical skill, community leadership, CoC adherence
- Unanimous P1 consensus
- Explicit acceptance by nominee (no pressure)

### Removing Maintainers

**Voluntary:**
- Announce intention to step down
- Transfer responsibilities (reviews, projects)
- Moved to "Emeritus" status (listed as alumni)

**Involuntary:**
- Only for Code of Conduct violations or prolonged inactivity (>1 year)
- P1 consensus decision
- Graceful transition period (30 days)

### Emeritus Maintainers

*Future section for retired maintainers who shaped the project.*

## Project Lead Succession

**Current Lead**: @Hyperpolymath (until PhD completion, estimated Month 18)

**Succession Plan (Phase 3):**
1. Identify 2-3 potential successors from P2 contributors
2. Gradual responsibility transfer (Month 15-17)
3. Community input period (30 days)
4. New lead appointed via P1 consensus
5. Previous lead remains as P1 advisor (unless stepping away entirely)

## Legal & Financial Governance

### Ownership

- **Code**: Dual-licensed MIT + Palimpsest v0.8, contributors retain copyright
- **Trademark**: "Evidence Graph" name (if registered) owned by project, not individual
- **Domain**: evidencegraph.org (if acquired) held in trust for project

### Funding (Phase 2+)

**If grants/donations received:**
- Transparent accounting (quarterly reports)
- Funds used for: Hosting, conferences, contributor stipends (if budget allows)
- Major expenditures (>€1,000) require P1 consensus
- Financial records public (or summary if privacy needed)

**Potential Sponsors:**
- Mozilla MOSS, Knight Foundation, EU Horizon
- NUJ (National Union of Journalists) partnership
- Academic institution grants

**No Ads, No Data Selling:**
- This project will never monetize user data
- No advertising or tracking beyond essential analytics
- Privacy-first, investigative journalism-friendly

## Acknowledgments

### Recognition

Contributors recognized in multiple places:

1. **.well-known/humans.txt**: Public roll of honor
2. **CHANGELOG.md**: Specific contributions noted
3. **Academic Papers**: Co-authorship for research contributors (with consent)
4. **Conference Talks**: Credit to implementers of featured work

### Awards & Grants

If the project wins awards or receives grants, credit shared:

- Maintainers acknowledged publicly
- Financial awards distributed to active contributors (if applicable)
- Trophy/plaque displayed in README

## Governance History

### Major Decisions

| Date | Decision | Process | Outcome |
|------|----------|---------|---------|
| 2025-11-22 | Project initiated, TPCF Perimeter 3 chosen | Initial design | Approved by @Hyperpolymath |
| TBD | (Future decisions logged here) | | |

### RFC Archive

*RFCs will be stored in `docs/rfcs/` with status (Accepted/Rejected/Superseded)*

## Contact

- **Governance Questions**: governance@evidencegraph.org (or open GitHub Discussion)
- **Lead Maintainer**: @Hyperpolymath
- **Code of Conduct**: conduct@evidencegraph.org

---

**Last Updated**: 2025-11-22
**Governance Model**: TPCF Perimeter 3 (Community Sandbox) + Palimpsest v0.8
**Emotional Temperature**: ✅ Healthy (Phase 1 baseline)

*This governance model is a living document. Suggest improvements via GitHub Discussion or PR.*
