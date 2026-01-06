# LAB 2 — Lessons Learned

- Security Groups alone are not sufficient for strong network security
- Network ACLs provide critical stateless enforcement
- Explicit DENY rules are essential for preventing accidental exposure
- Validation and testing are as important as deployment
- Terraform makes network security controls repeatable and auditable

# PHASE 3

1. Always double-check the VPC and subnet configuration before launching EC2 instances.  
2. Security Groups are stateful; Network ACLs are stateless. Use both for layered security.  
3. Restrict SSH access to known IPs only; avoid 0.0.0.0/0 unless necessary.  
4. Terraform can automate networking, but manual verification ensures rules are applied correctly.  
5. Always add `.terraform/` and state files to `.gitignore` to prevent pushing large binaries.  

