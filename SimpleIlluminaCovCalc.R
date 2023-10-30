# Quick script to identify output requirements for illumina sequencing based on the panel size and required parameters.

# Store max outputs for various kit sizes for MiSeq. Accurate as of 30-10-2023
MiSeqV2c50 <- 850
MiSeqV2c300 <- 5100
MiSeqV2c500 <- 8500
MiSeqMicroV2c300 <- 1200
MiSeqNanoV2c300 <- 300
MiSeqNanoV2c500 <- 500

MiSeqV3c150 <- 3800
MiSeqV3c600 <- 15000

# Specify required output in Mb

RegionSizeMb <- 0.196588
ReadLength <- 150
Duplicates <- 0.1
OnTarget <- 0.8
CoverageDepth <- 500

Output <- (RegionSizeMb * CoverageDepth) / ((1-Duplicates) * OnTarget)
cat(Output,"Mb")


cat("Using the MiSeqV2c50 you would get ", MiSeqV2c50 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqV2c300 you would get ", MiSeqV2c300 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqV2c500 you would get ", MiSeqV2c500 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqMicroV2c300 you would get ", MiSeqMicroV2c300 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqNanoV2c300 you would get ", MiSeqNanoV2c300 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqNanoV2c500 you would get ", MiSeqNanoV2c500 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqV3c150 you would get ", MiSeqV3c150 / Output , "samples multiplexed on one flow cell.")
cat("Using the MiSeqV3c600 you would get ", MiSeqV3c600 / Output , "samples multiplexed on one flow cell.")

# Note! It is not recommended to multiplex higher than 192.