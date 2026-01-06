# LAB 2 — Network Security (AWS + Terraform)

## Objective
Design and secure an AWS VPC using Infrastructure as Code, enforcing network-level security controls and validating defense-in-depth mechanisms.

This lab focuses on preventing common cloud network misconfigurations that lead to unauthorized access.

---

## Phase 1 — VPC & Security Groups

### Architecture
- Custom VPC
- Public and private subnets
- Internet Gateway and routing
- Security Groups enforcing least privilege

### Security Controls Implemented
- Public EC2 Security Group allowing only HTTP/HTTPS
- No unrestricted SSH access
- Separation of public and private workloads

### Threats Mitigated
- Accidental public exposure
- Overly permissive inbound rules
- Flat network design

---

## Phase 2 — Network ACLs (Defense in Depth)

### Security Enhancements
- Stateless Network ACLs applied at subnet level
- Explicit SSH deny rule (port 22)
- Controlled inbound and outbound traffic

### Why NACLs?
Security Groups are stateful and resource-level.  
Network ACLs provide an additional stateless enforcement layer that protects against misconfigured Security Groups.

---

## Outcome
A layered network security architecture enforcing:
- Least privilege
- Explicit deny rules
- Subnet-level isolation

# LAB2-aws-network-security-lab
# LAB2-aws-network-security-lab
