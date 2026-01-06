# LAB 2 — Validation & Security Testing

## Phase 1 Validation (Security Groups)

### Tests Performed
- HTTP (80) access to public EC2
- HTTPS (443) access to public EC2
- SSH access attempt from the internet

### Results
| Test | Result |
|----|----|
| HTTP/HTTPS | ✅ Allowed |
| SSH | ❌ Blocked |

---

## Phase 2 Validation (Network ACLs)

### Test Scenarios
1. Attempt SSH access from the internet
2. Modify Security Group to allow SSH (simulated misconfiguration)
3. Retest SSH access

### Results
| Scenario | Result |
|--------|--------|
| SSH via NACL | ❌ Blocked |
| SSH with SG misconfigured | ❌ Still blocked |
| HTTP/HTTPS | ✅ Allowed |

---

## Conclusion
Network ACLs successfully enforced stateless security controls and prevented SSH exposure even when Security Groups were intentionally misconfigured.

Defense-in-depth confirmed.



Finalize documentation (validation.md and lessons-learned.md)

Push LAB 2 repository to GitHub (without including .terraform binaries)

# Phase 3 Validation - AWS Network Security Lab

## Security Group Validation
- Security Group ID: sg-0fa39214d7ce7e2fc
- Inbound SSH: Restricted to lab operator IP (least privilege)
- Outbound: All traffic allowed (default)
- No other unnecessary ports are open

## EC2 Connectivity
- SSH successfully connected using lab keypair
- Security group applied correctly

## Conclusion
Phase 3 security configuration confirmed: 
- EC2 instances accessible only via least-privilege SSH
- Public access controlled

