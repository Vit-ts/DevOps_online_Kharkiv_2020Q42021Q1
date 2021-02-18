## Task8.1

### Jenkins Task

#### Create some templates using lection materials about Jenkins according your final task.

More detailed: choose the content part for your final task (simple web page, web application, etc) and programming language (java, js, python, etc), and type of delivery/deployment mechanism.

#### 1. Setting up the environment by setting up several servers on a vagrant

| <img src = "screens/1_1.png"> |
| :---------------------------: |
| <b> Img.1.1 - Vagrantfile</b> |

#### 2. Configuring Jenkins Server (Installing Jenkins and Plugins)

|     <img src = "screens/2_1.png">     |
| :-----------------------------------: |
|     <img src = "screens/2_2.png">     |
|     <img src = "screens/2_3.png">     |
|     <img src = "screens/2_4.png">     |
| <b> Img.2.1 - Configuring Jenkins</b> |

#### 3. We implement building and testing of the project from Git using the node VM4 host and, if the tests are successful, deploy it to the test VM2 server, if everything is fine, then deploy it to the production VM3 server

|                                             <img src = "screens/3_1.png">                                             |
| :-------------------------------------------------------------------------------------------------------------------: |
|                                <b> Img.2.2 - Create a host for VM4 (192.168.0.103)</b>                                |
|                                             <img src = "screens/3_2.png">                                             |
|                                         <b> Img.2.3 - Fill in the fields</b>                                          |
|                                             <img src = "screens/3_5.png">                                             |
|                                     <b> Img.2.4 - Create credentials for VM4</b>                                      |
|                                            <img src = "screens/3_4_1.png">                                            |
|             <b> Img.2.5 - We take the private key from the VM1 machine and copy the public one to VM4</b>             |
|                                             <img src = "screens/3_6.png">                                             |
|                    <b> Img.2.6 - Install java on VM4 in advance and create the Jenkins folder</b>                     |
|                                             <img src = "screens/3_4.png">                                             |
|                                            <b> Img.2.7 - node created</b>                                             |
|                                             <img src = "screens/3_7.png">                                             |
|                                      <b> Img.2.8 - node created and linked </b>                                       |
|                                             <img src = "screens/3_8.png">                                             |
| <b> Img.2.9 - We create a connection with VM2-test and VM-prod via Publish over ssh so that we can deploy to them</b> |
|                                             <img src = "screens/3_9.png">                                             |
|                     <b> Img.2.10 - copy the link to the repository for the job deploy-to-VM2</b>                      |
|                                            <img src = "screens/3_10.png">                                             |
|                                    <b> Img.2.11 - create ssh key-pair for git</b>                                     |
|                                            <img src = "screens/3_11.png">                                             |
|                               <b> Img.2.12 - create credentials for git on jenkins</b>                                |
|                                            <img src = "screens/3_12.png">                                             |
|                                 <b> Img.2.14 - Create job Deploy-to-VM2 (General)</b>                                 |
|                                            <img src = "screens/3_13.png">                                             |
|                          <b> Img.2.15 -Create job Deploy-to-VM2 (Source code management)</b>                          |
|                                            <img src = "screens/3_14.png">                                             |
|                             <b> Img.2.16 - FCreate job Deploy-to-VM2 (Build triggers)</b>                             |
|                                            <img src = "screens/3_15.png">                                             |
|                            <b> Img.2.17 - Create job Deploy-to-VM2 (Build environment)</b>                            |
|                                            <img src = "screens/3_16.png">                                             |
|                                  <b> Img.2.18 - Create job Deploy-to-VM2 (Build)</b>                                  |
|                                            <img src = "screens/3_17.png">                                             |
|                           <b> Img.2.19 - Create job Deploy-to-VM2 (Post-build actions)</b>                            |
|                                             <img src = "screens/6_1.png">                                             |
|            <b> Img.2.20 - before checking the task, set the rights of the specified user to /var/www </b>             |
|                                            <img src = "screens/3_18.png">                                             |
|                                     <b> Img.2.20 - start job (Deploy-to-VM2)</b>                                      |
|                                            <img src = "screens/3_19.png">                                             |
|                                       <b> Img.2.21 - CI/CD TEST ENVIRONMENT</b>                                       |

|                                   <img src = "screens/4_1.png">                                   |
| :-----------------------------------------------------------------------------------------------: |
| <b> Img.3.1 - Creating a task for deployment to VM4 by copying it from the Deploy-to-VM2 job </b> |
|                                   <img src = "screens/4_2.png">                                   |
|                              <b> Img.3.2 - Change Build triggers</b>                              |
|                                   <img src = "screens/4_3.png">                                   |
|                                  <b> Img.3.3 - Change Build</b>                                   |
|                                   <img src = "screens/4_4.png">                                   |
|                            <b> Img.3.4 - Change Post-build actions</b>                            |
|                                   <img src = "screens/4_5.png">                                   |
|                            <b> Img.3.5 - start job (Deploy-to-VM2)</b>                            |
|                                   <img src = "screens/4_6.png">                                   |
|             <b> Img.3.6 - Deploy-on-VM3 is started automatically after triggering</b>             |
|                                   <img src = "screens/4_7.png">                                   |
|                         <b> Img.3.7 - old CV 192.168.0.101 (VM2-test)</b>                         |
|                                   <img src = "screens/4_8.png">                                   |
|                         <b> Img.3.8 - old CV 192.168.0.102 (VM3-Prod)</b>                         |
|                                   <img src = "screens/4_9.png">                                   |
|                      <b> Img.3.9 - Console output of a job Deploy-to-VM2</b>                      |
|                                  <img src = "screens/4_10.png">                                   |
|                     <b> Img.3.10 - Console output of a job Deploy-to-VM3</b>                      |

#### Change index.html, main.css and commit changes

|                                      <img src = "screens/5_1.png">                                      |
| :-----------------------------------------------------------------------------------------------------: |
|                                      <b> Img.4.1 - new commit</b>                                       |
|                                      <img src = "screens/5_2.png">                                      |
| <b> Img.4.1 - Console output the Deploy-to-VM2 job manual to the console (running by an SCM change)</b> |
|                                      <img src = "screens/5_3.png">                                      |
| <b> Img.4.1 - Console output the Deploy-to-VM3 job manual to the console (running by an SCM change)</b> |
|                                      <img src = "screens/5_4.png">                                      |
|                            <b> Img.4.1 - new CV 192.168.0.101 (VM2-test)</b>                            |
|                                      <img src = "screens/5_5.png">                                      |
|                            <b> Img.4.1 - new CV 192.168.0.101 (VM2-test)</b>                            |
