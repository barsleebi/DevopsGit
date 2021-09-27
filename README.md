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
6) create path for Jenkins workspace in my case i used and created a node in Jenkins with below working directory
    #mkdir -p /devOps/jenkins/workspace/
7) make sure this path is changed in "**slave_web_build.yml**" for docker to build images.

------------------------------------------------------------------------------------------------------
**
On Master Server:**

8) Additionally to avoid IPs in inventory i added hosts name and respective ips in /etc/hosts. THis will help name resolution
9) Label Master server as **masterNode** and slave server as **slaveNode** to match the pipepline script
10) Create a jenkins pipline job and use contents of the Jekins_pipeline to create the job
11) Execute the piple line job
12) Once completed access the website using **http://<slave_node_ip>:7777**
------------------------------------------------------------------------------------------------------

#######################################################################################################
**Job execution screenshots:**


**Screenshot 1: Job "1_ProjCert" created**

![image](https://user-images.githubusercontent.com/30494615/126619396-9d5eab25-7436-4f36-835f-7ef8b5a4bdac.png)

**Screenshot 2: Job Executed using pipeline script**

![image](https://user-images.githubusercontent.com/30494615/126620040-3017e545-37f6-49f0-8e8e-bb2289c7b327.png)

**Screenshot 3: Job parallel execution step1 pulled from git repo to master**

![image](https://user-images.githubusercontent.com/30494615/126620349-b862f86c-5f6b-4553-83e6-2dddfe91a841.png)

**Screenshot 4: Job parallel execution step1 pulled from git repo to slave**

![image](https://user-images.githubusercontent.com/30494615/126620792-045830c1-06f5-4f65-81e2-cb236534091a.png)

**Screenshot 5: Job step2 installed dependencies on Slave**

![image](https://user-images.githubusercontent.com/30494615/126621169-f8e4d7c1-4c0d-47bb-808f-82b86b4deb88.png)

**Screenshot 6: Job step3 Docker Image created**

![image](https://user-images.githubusercontent.com/30494615/126620925-bad8822c-62cf-4007-b060-6de72e8c2236.png)

**Screenshot 7: Job step4 Docker container created and exposed to port 7777**

![image](https://user-images.githubusercontent.com/30494615/126621378-5910e464-f6c4-44b0-b1ad-20d9d4f8d89a.png)

**Screenshot 8: Job step5 Website deployed and accessable**

![image](https://user-images.githubusercontent.com/30494615/126621622-79a0c2f6-0df3-4213-b9bc-bb1673abc517.png)




Thank you !!!

