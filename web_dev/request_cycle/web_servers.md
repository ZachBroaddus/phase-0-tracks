Release 1:
2. What are some of the key design philosophies of the Linux operating system?
Linux, unlike most other operating systems, assumes that the user is competent and empowers to user to do pretty much anything,
for better or worse. In contrast, Windows and Mac OS assume that the user is not competent and intentionally shield users from 
various system features. 

The Linux philosophy has 9 tenets:
Small is Beautiful
Each Program Does One Thing Well
Prototype As Soon As Possible
Choose Portability Over Efficiency
Store Data In Flat Text Files
Use Software Leverage
Use Shell Scripts To Increase Leverage and Portability
Avoid Captive User Interfaces AND
Make Every Program a Filter

3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a virtual machine on a remote server or servers. This service is often provided by ISPs and comes with many of the same features that are available when using a dedicated physical server. VPSs are typically much cheaper than dedicated physical servers, but could potentially be slower, as your vitual machine(s) will be on physical servers that are shared with other users. For the most part, they are equivalent to dedicated physical servers, as they allow a user to have full admin access, they come with their own operating system, and allow a user to install nearly any software that they like.

4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

For one, the root user has access to write to all files on the system. If your server becomes infected with malware when you're logged in as root, the malware could wipe out the entire system. Whereas, if you're logged in as a normal user with limited access, the malware would only be able to write to files that that user has access to. Even if the malware deletes everything that the limited user has access to, some of the system will still be spared. If backups are kept, it will be possible to restore the deleted or affected files. For this reason, it's a best practice to run all programs as a regular, limited user whenever possible.