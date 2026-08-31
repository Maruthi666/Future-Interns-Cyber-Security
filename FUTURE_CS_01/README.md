# FUTURE_CS_01 — Vulnerability Assessment Report

Cyber Security Internship @ Future Interns
Intern: **Lalas Maruthi** | CIN ID: `FIT/AUG26/CS10164`

## About this task

For this task I picked a legally-authorized test target — [testphp.vulnweb.com](http://testphp.vulnweb.com), a site Acunetix maintains specifically for people to practice security testing on without needing separate permission. I didn't want to build my first assessment on a site I had no authorization to touch, so this felt like the right way to actually learn the process properly.

## What I used

- **Nmap** — service and version enumeration
- **OWASP ZAP** (passive scan only) — automated crawl and vulnerability flagging
- **Browser DevTools** — manual verification of headers, cookies, and requests
- **Canva** — final report design

## What I found

| ID | Finding | Risk |
|----|---------|------|
| V-01 | SQL Injection in login/search form | High |
| V-02 | Reflected Cross-Site Scripting (XSS) | High |
| V-03 | Missing security headers (CSP, X-Frame-Options, HSTS) | Medium |
| V-04 | Server banner reveals version info | Medium |
| V-05 | Session cookies missing Secure/HttpOnly flags | Low |

The two High findings were the ones that mattered most — both are common, well-documented issues, but working through them manually (rather than just trusting the scanner) is what made them actually click for me.

## Files in this repo

- `FUTURE_CS_01_Vulnerability_Assessment_Report.pdf` — full write-up with detailed findings, business-language explanations, and remediation steps
- `screenshots/` — scan output and manual verification evidence

## What I'd do differently on a real engagement

Spend more time manually confirming each automated finding before writing it down — the tool gets you 80% of the way, but the last 20% is where you actually understand *why* something is a risk.

## License

MIT — see [LICENSE](./LICENSE)
