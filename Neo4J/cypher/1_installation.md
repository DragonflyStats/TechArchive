https://www.quackit.com/neo4j/tutorial/neo4j_create_a_node_using_cypher.cfm

Neo4j Installation

    About Neo4j
    Neo4j Browser

This page explains briefly how to download and install Neo4j onto your computer. It's quite a short page because there's really not that much to it.
Download Neo4j

First, download a copy of Neo4j from the Neo4j download page. You can choose from either a free Enterprise Trial, or the free Community Edition.

This tutorial uses the Community Edition.

To download, simply click the Download button. Your download should start automatically.

The website will automatically download the appropriate file for your operating system. If you don't want this, you can choose another operating system using this link to other releases.
Install Neo4j

Once the file has downloaded, you can install Neo4j.

The download screen includes step by step instructions on installing Neo4j on to your operating system.

Here are instructions for installing Neo4j on Mac, Windows, and Linux machines. These instructions are listed here to give you a quick overview of the steps involved in installing Neo4j. The actual steps may vary with future releases, so be sure to use the instructions on the Neo4j website at the time of download. Neo4j displays these instructions on the "Thank You" page when you download Neo4j.
Mac Installation (dmg)

The installer includes the Java version needed for running Neo4j.

    Open the dmg file you just downloaded.
    Drag the Neo4j icon into your Applications folder. Watch the video to see this in action.
    Open Neo4j from your Applications folder. You might need to acknowledge that you downloaded the application from the Internet.
    Click on the Start button to start the Neo4j server.
    Open the provided URL in your local web browser.
    Change the password for the neo4j account.

Linux/UNIX Install (tar)

    Open up your terminal/shell.
    Extract the contents of the archive, using: tar -xf  <filecode>. For example,
    tar -xf neo4j-enterprise-2.3.1-unix.tar.gz  the top level directory is referred to as NEO4J_HOME
    Run Neo4j using $NEO4J_HOME/bin/neo4j console. Instead of ‘neo4j console’, you can use neo4j start to start the server process in the background.
    Visit http://localhost:7474 in your web browser.
    Change the password for the neo4j account.

Windows (exe)
The installer includes the Java version needed for running Neo4j.

    Launch the installer you just downloaded. You might have to give the installer permission to make changes to your computer.
    Follow the prompts, and choose the option to Run Neo4j.
    Click on the Start button to start the Neo4j server.
    Open the provided URL in your local web browser.
    Change the password for the neo4j account.

Windows (zip)

    If it is not already installed, get OpenJDK 8 or Oracle Java 8, recommended for Neo4j 2.3.0. Version 7 is recommended for releases prior to 2.3.0.
    Find the zip file you just downloaded and right-click, extract all.
    Place the extracted files in a permanent home on your server. The top level directory is referred to as NEO4J_HOME, for example D:\neo4j\.
    Start and manage Neo4j using the Windows PowerShell module included in the zip file.
    Visit http://localhost:7474 in your web browser.
    Change the password for the neo4j account.

Starting and Connecting to the Neo4j Server

    Start the Server
    Screenshot of the Neo4j launcher

    The installation instructions include instructions for starting the Neo4j server. The exact method you use will depend on your operating system.

    For example, on a Mac, clicking Neo4j Community Edition from the Applications folder will launch this screen that allows you to start the Neo4j server.

    Once the server has been started, open the following URL in your web browser: http://localhost:7474/ and follow the prompts.

    Below are the screens I encountered when logging in for the first time (note that future versions may be different).
    Connect to Neo4j
    Screenshot of the Neo4j browser cloud page

    You can either create an account for the cloud service or click No thanks
    Log In
    Screenshot of the Neo4j browser log in screen

    Log in using the username and password provided on the screen.

    The first time you log in you will be prompted to change your password.
    The Result
    Screenshot of the Neo4j browser start screen

    Once the password has been changed, this screen is displayed.

    Here, you can use the links to learn more about Neo4j and how to create databases and run queries.
