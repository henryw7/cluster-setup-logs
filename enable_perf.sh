### Software
# OS: Ubuntu 24.04.1 LTS

### Problem
# I want to run the following perf commands in user mode
perf record -F 9999 -o perf.data -g python python_script.py
perf report --stdio -n -g

### Solution
# Permanently turn it on
sudo vim /etc/sysctl.conf # Add kernel.perf_event_paranoid=0
# Temporarily turn it on
sudo sysctl kernel.perf_event_paranoid=0
