### Region:
A Region is geographical area where a cloud provider has data centers.
AWS: us-east-1, eu-west1
Azure: East US, West Europe
> Each region is independent
> Used for:
  - Disaster recovery
  - Data residency /compilance
  - Latency optimization
 > If a region goes down -> everything in that region is affected.
# Availability Zone:
### An Availability Zone is a physically separate data center inside a region.
A region contains multiple Azs
# AZs are:
> Separate power
> Separate Networking
> Separate cooling
### Connected via high-speed, low-latency network
If one AZ fails - other AZs in the same region keep running

## Key differences (table)
## Feature                      ##Region                    ##Availability Zone
Scope                            Large geographic area      Data center inside region
Fault isolation                   Region-level              Data center-level
Count                              Limited globally          Multiple per region
Used for                          DR, compliance             High availability
Network latency                   Higher (between regions)    Very low (between AZs)

#Best practice (DevOps / Cloud)
##  Deploy applications across multiple AZs
##  Use multiple regions for disaster recovery
##  Load balancer across AZs
##  Database replication across AZs

A region is a geographical location containing multiple availability zones, while an availability zone is an isolated data center within a region designed to provide high availability and fault tolerance.
