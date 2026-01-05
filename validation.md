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

