Scripts to assist with benchmarking "classic" Quake II v3.20

These scripts were created to help collect data for a YouTube video about the 3dlabs GMX 2000 video card.

Benchmarking Quake II is a giant hassle.  If a person wants to gather data from multiple runs of multiple demos at a variety of resolutions, there are many challenges.  A seemingly obvious solution is to create a Quake II script with something like:

```
set logfile "3"
set timedemo "1"
demomap demo1.dm2
demomap demo1.dm2
demomap demo1.dm2
quit
```

Unfortunately, each invocation of `demomap` interrupts the previous, and the final invocation of `quit` interrupts them all.  No demos are run at all.

The next obvious thing is a variation of the demo loop technique:

```
set logfile "3"
set timedemo "1"
alias d1 "demomap demo1.dm2; set nextserver d2"
alias d2 "demomap demo1.dm2; set nextserver d3"
alias d3 "demomap demo1.dm2; set nextserver quit"

d1
```

This also fails, though this seems like a bug in Quake II.  The demo is run _once_, and the logged FPS is zero.

A solution that actually works is to have a separate script for each combination of demo and resolution.  A batchfile then starts the game once with each of these scripts.  The console output files are renamed after each group of runs to have sensible names.

The batchfile should be placed in the top level `quake2` directory, and all of the `.rc` scripts should be placed in the `baseq2` subdirectory.  The script will collect all of the FPS results in a file called `results.txt` in the top level `quake2` directory.