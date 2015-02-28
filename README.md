Mac App Store Auto-login. All credits go to Martian Craft. True sandbox

http://martiancraft.com/blog/2015/01/login-items/

Rules surrounding ‘launch at login’ apps
Before you begin, you should know about a specific rule surrounding ‘launch at
login’ in the Mac App Store developer requirements list.
This rule is outlined in the Mac App Store Review Guidelines document:
2.26 Apps that are set to auto-launch or to have other code automatically
run at startup or login without user consent will be rejected
The easiest way to meet this requirement is to include a user preference in
your application’s Preferences view that lets the user toggle between
launching the app at login and not launching the app at login. We’ll show
you how to do this and meet the sandbox requirements of the Mac App Store in
the implementation details below.
