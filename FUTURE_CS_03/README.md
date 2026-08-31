# FUTURE_CS_03 — API Security Risk Analysis

Cyber Security Internship @ Future Interns
Intern: **Lalas Maruthi** | CIN ID: `FIT/AUG26/CS10164`

## About this task

I tested against [reqres.in](https://reqres.in), a public demo API that's built specifically to be tested against — no real user data behind it, so I could focus entirely on learning the methodology instead of worrying about scope or permission.

## How I tested it

Using Postman, request by request rather than scripting blind, so I could actually look at each response before moving on:

- Mapped available endpoints
- Checked whether "protected" endpoints actually enforce authentication
- Swapped resource IDs to test for IDOR (insecure direct object reference)
- Sent a burst of rapid requests to check for rate limiting
- Sent malformed input to see how the API handled it

## What I found

| ID | Finding | Risk |
|----|---------|------|
| A-01 | No rate-limiting on repeated requests | Medium |
| A-02 | Sequential, predictable resource IDs | Medium |
| A-03 | Verbose error responses on bad input | Low |
| A-04 | No authentication required to read data | Medium (expected on this demo) |

A-02 was the one that actually taught me something — watching a different user's data come back just from incrementing a number in the URL made the IDOR risk click in a way no explanation ever had.

## Files in this repo

- `FUTURE_CS_03_API_Security_Risk_Analysis.pdf` — full write-up with findings, business impact, and remediation guidance

## Next step

I plan to run this same checklist against my actual assigned API target once it's confirmed, as the final version of this task.


