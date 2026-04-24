# We use the Dockurr image which handles the QEMU/Windows setup automatically
FROM dockurr/windows

# We MUST limit resources for the 1GB Railway plan
ENV RAM_SIZE="768M"
ENV CPU_CORES="2"

# Important: Since KVM is not available, we force software emulation
ENV KVM="N"

# Optional: Link to a very tiny Windows version (Tiny10) to save space/RAM
ENV VERSION="https://archive.org/download/tiny-10-NTdev/tiny10%20x64%2021H2.iso"
