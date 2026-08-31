# FUTURE_CS_02 — Phishing Email Detection & Awareness System

Cyber Security Internship @ Future Interns
Intern: **Lalas Maruthi** | CIN ID: `FIT/AUG26/CS10164`

## About this task

For this one I worked through a small set of sample emails — pulled from public phishing datasets — the way an analyst actually would: checking the real sender address, the header authentication results, where the links truly point, and the tone of the message. The point wasn't just to slap a label on each one, but to be able to explain *why* to someone non-technical.

## How I checked each email

- Sender address vs. display name
- SPF / DKIM / DMARC results where available
- Actual link destination vs. displayed link text
- Tone — urgency, threats, unusual requests
- Attachment type and naming patterns

## What I classified

| ID | Subject | Classification |
|----|---------|-----------------|
| E-01 | "Your account will be suspended in 24 hours" | Phishing |
| E-02 | "Invoice #40217 attached — payment overdue" | Phishing |
| E-03 | "IT: password reset required" | Phishing |
| E-04 | "Quarterly newsletter sign-up confirmation" | Suspicious |
| E-05 | "Meeting notes from today" | Safe |

E-04 is worth calling out — I wasn't fully confident labeling it phishing outright, so I flagged it as suspicious rather than forcing a verdict I wasn't sure of.

## Files in this repo

- `FUTURE_CS_02_Phishing_Detection_Awareness_Report.pdf` — full analysis with per-email breakdowns and end-user prevention guidelines

## What this task taught me

Most of these emails didn't rely on anything technically clever — they relied on someone being rushed. That reframed how I think about awareness training: it's less about teaching people to read code and more about teaching them to slow down for ten seconds before clicking.

## License

MIT — see [LICENSE](./LICENSE)
