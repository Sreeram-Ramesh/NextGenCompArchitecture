
# PERF TOOLS: LINUX PROFILING

The Linux ***perf*** commands aka ***perf_events*** are useful to instrument the CPU performance counters, tracepoints, kprobes and uprobes (dynamic tracing).

### What Are Performance Counters?

Performance counters are basically those CPU hardware registers that keep track of events such as the instructions executed, cache-misses, branches mispredicted etc. Usually used for application profiling to trace dynamic control flow and identify hotspots. It provides per task, per CPU, per-workload counters, sampling on top of these and source code event annotations.

### What Are Tracepoints?

Tracepoints are instrumentation points placed in logical locations of the source code such as for system calls, TCP/IP events, file system operations, etc.

### Some Important Perf Commands:

> perf stat: obtain event counts

> perf record: record events for later reporting

> perf report: break down events by process, function, etc.

> perf annotate: annotate assembly or source code with event counts

> perf top: see live event count

> perf bench: run different kernel microbenchmarks
---

## Acknowledgements

 - [Perf Wiki](https://perfwiki.github.io/main/)
 - [Introduction to Perf-Linux Performance Analysis](https://www.youtube.com/watch?v=M6ldFtwWup0&list=PLx-WakpEO8zFQGRrB4xYAuWjHKqVWlwaD)
