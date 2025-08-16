# INTEL MEMORY LATENCY CHECKER
Performance is vital for any application, and an important performance determining factor is the time required to access the contents of the processor's cache hierarchy and the memory subsystem. In **multi-socket systems** where there is more than one processor socket on a single motherboard that allows for installation of more than one physical cpu package, **NUMA (Non-Uniform Memory Allocation)** is enabled, local memory and cross-socket memory latency varies widely. Besides this bandwidth also is an important factor to consider. Measure these parameters is important so we can set a baseline to any system and do performance analysis.

**Intel MLC** tool provides ways to measure memory latencies and bandwidth, how they change with loads, methods to perform fine-grained latency and bandwith analysis between specific set of cores and memory.

> **NOTE:** 
> 1. If the operating system is Linux then run the commands with root privileges.
> 2. If your **msr** (model-specific register) is being blocked then it is most probably because you are running on a **VM** or on a secure boot-locked kernal, so run it baremetal with secure boot disabled to access the msr.
 ---

 ## Some common measurements

```
sudo ./mlc
```

Running the tool without any parameters figures the system topology out and fetches the following system measurements by default:

1. A matrix of idle memory latencies for requests originating from each of the sockets to themselves and then to addresses at each of the other available sockets.