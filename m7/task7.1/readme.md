## Task7.1

### A. Create a script that uses the following keys:

| <img src = "screens/1_1.png"> |
| :---------------------------: |
|       <b> Img. 1.1</b>        |

#### 1. When starting without parameters, it will display a list of possible keys and their description.

| <img src = "screens/1_3.png"> |
| :---------------------------: |
|       <b> Img. 1.2 </b>       |

#### 2. The --all key displays the IP addresses and symbolic names of all hosts in the current subnet

|   <img src = "screens/1_5.png">   |
| :-------------------------------: |
| <b> Img. 1.3 - ./script --all</b> |

#### 3. The --target key displays a list of open system TCP ports.

|    <img src = "screens/1_4.png">     |
| :----------------------------------: |
| <b> Img. 1.4 - ./script --target</b> |

#### The code that performs the functionality of each of the subtasks must be placed in a separate function

file [script.sh](script.sh)

| <img src = "screens/1_2.png"> |
| :---------------------------: |
|       <b> Img. 1.5</b>        |

### B. Using Apache log example create a script to answer the following questions:

#### 1. From which ip were the most requests?

| <img src = "screens/2_1.png"> |
| :---------------------------: |
| <img src = "screens/2_2.png"> |
|        <b> Img.2.1</b>        |

#### 2. What is the most requested page?

| <img src = "screens/3_1.png"> |
| :---------------------------: |
| <img src = "screens/3_2.png"> |
|        <b> Img.2.2</b>        |

#### 3. How many requests were there from each ip?

| <img src = "screens/4_1.png"> |
| :---------------------------: |
| <img src = "screens/4_2.png"> |
|        <b> Img.2.3</b>        |

number of all requests

| <img src = "screens/4_3.png"> |
| :---------------------------: |
|        <b> Img.2.4</b>        |

#### 4. What non-existent pages were clients referred to?

Error 404 is the standard HTTP response code indicating that the client was able to communicate with the server, but the server cannot find the data as requested.

| <img src = "screens/5_1.png"> |
| :---------------------------: |
| <img src = "screens/5_2.png"> |
|        <b> Img.2.5</b>        |

#### 5. What time did site get the most requests?

| <img src = "screens/6_1.png"> |
| :---------------------------: |
| <img src = "screens/6_2.png"> |
|        <b> Img.2.6</b>        |

#### 6. What search bots have accessed the site? (UA + IP)

| <img src = "screens/7_1.png"> |
| :---------------------------: |
| <img src = "screens/7_2.png"> |
|        <b> Img.2.6</b>        |

### C. Create a data backup script that takes the following data as parameters:

#### 1. Path to the syncing directory.

#### 2. The path to the directory where the copies of the files will be stored.

#### In case of adding new or deleting old files, the script must add a corresponding entry to the log file indicating the time, type of operation and file name. [The command to run the script must be added to crontab with a run frequency of one minute]
