Challange 9.1 - How the Web Works
Release: 1

1. What are some of the key design philosophies of the Linux operating system?

   - Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new 'features'
    - Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extaneous information. Avoid stingently columnar or binary input formats. Dont insist on interactive input
    - Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them
    - Use tools in preferences to unskilled help to lighten a programming task, even if you have to detour to build the tools and expect to throw some of them out after you've finished using them. 

	- Less is more
	- Each program does a specific task
	- Prototype as soon as Possible
	- Choose portability over efficiency
	- Store data in flat text files
	- Use Softwate Leverage
	- Use shell scrips to increase leverage and portability
	- Avoid intense user interfaces
	- Make every program a filter


2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

	For purposes of functionality, Virtual Private Servers are pretty much equivilant to a physical server. Since they are defined by their software, the creation and configuration process is much easier to implement on VPS. 

	One of the biggest advantages of using a VPS is that you have full access to the operating system, with unrestricted root permissions. This gives you a level of access that allows you to configure your system to meet any kind of requirement that has to be satisfied. 
	Another advantage is that is allows you to host multiple websites, folders, files, etc, on the same VPS. Rather than having a physical server that holds one of your websites, and another than holds your testing website, or a seperate batch of files. VPS allow you to host alll of these things on one VPS. 

--> Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

	root is the equivilant of super-user, and is the only user that exists in the beginning. It is important to make a new user, other than root, then switch to for running programs. 

	If you run programs as the root user, you are opening yourself up to some huge vulnerabilities. Any kind of crash or bug in a program could end up wiping out your entire root drive, or corrupting it. When you are logged in as root, you have all of the admin priviledges, so any virus in the programs can gain access to any other files under root. 