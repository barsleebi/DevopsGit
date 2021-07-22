# DevopsGit
Final project submission for Edureka/DevOps

------------------------------------------------------------------------------------------------------
**
On Master Server:**
1) Run master_setup.sh on you master VM, this will install all necessary tools needed for starting with the project.
2) Manually setup Java and Maven Path in /etc/profile, this will be added to jenkins
3) Add sudo/root permission for Jenkins user based on your OS
4) Once setup is completed use web browser on host machine "**https://<master_server_ip>:8080**" to open jenkins
    a) In Jenkin URL install plugins for Ansible and other dependencies
    b) Under global configuration setup the path to JDK, Ansible and Git
    c) In global credential input credentials used for Server, Git etc if needed
5) Also to ensure ansible is able to connect to each host, for this we need to setup SSH key and copy the key to respective user folder on slave machine

------------------------------------------------------------------------------------------------------

**
On Slave Server:**
1) create path for Jenkins workspace in my case i used
    #mkdir -p /devOps/jenkins/workspace/
2) make sure this path is changed in "**slave_web_build.yml**" for docker to build images.

------------------------------------------------------------------------------------------------------
**
On Master Server:**
6) Add the slave server as node on Jenkins to enable pipline execution on both node
7) Create a jenkins pipline job and use contents of the Jekins_pipeline to create the job
8) Execute the piple line job
------------------------------------------------------------------------------------------------------

