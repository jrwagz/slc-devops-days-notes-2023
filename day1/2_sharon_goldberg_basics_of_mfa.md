# Basics of MFA in 2023

Problem is that passwords are long lived credentials tokens.

## Types of MFA

- Phone-based MFA
proof that you own a phone number.
PROBLEM: It's not that hard to steal your phone number. sim swapping, SS7 attacks. Phishing attacks.

- TOTP (Time-based One Time Password)
proof that you posses the phone.
GOOD: decent security, acceptable for employees.
PROBLEM: entering password and MFA into a phishing attack website, and credentials get relayed in real time to the real website.

- Push-based MFA
proof that you posses the phone.
Your phone proves the possession of the secret by speaking directly to the server.
UBER breach
PROBLEM: MFA fatigue. Sends push notifications to the employee over and over and over until you get tired and press OK to make it go away.

- Webauthn: It's not just about "the hardware key"
Public/Private key based
Identity provider asks browser to authenticate for Alice
Browser validates the Identity provider with TLS
Browser sends challenge to the Authenticator, which signs the challenge with it's private key.
Browser sends signed challenge response back to the Identity provider.
Depends upon TLS security.  If TLS is bad, then this falls down.
CONS: New. Hardware keys can be annoying.
