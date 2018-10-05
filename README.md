Github Rivers Exercise
##README Template from https://gist.github.com/PurpleBooth/109311bb0361f32d87a2

Included:
  Assignment description
  Getting Started
    Challenges
    Downloading data
    Prerequisites necessary

Assignment Details:
The purpose of this project is to explore the interactive and communicative possibilities of collaboration efforts through Github. The task is to work in tandem to write a script that would allow historic stream gauge data to be downloaded and organized, and the most current records reported out for a select number of gauge sites in North Carolina to be used to assess the impact of Hurricane Florence.   

Getting Started:
  The biggest challenge in this assignment is understanding the USGS interface for downloading gauge data.  Though not apparently present, the format for data download is .txt.  
  For a gauge site of interest, the information can be obtained using https://waterdata.usgs.gov/nc/nwis/current/?type=flow .
    Once you have selected your site of interest you will need to select tab-separated for your "output format".
    Setting the date back to 1900 was the default for our script, if the site you are interested in contains data further back you would need to edit the selection under "Begin Date".

  Prerequisites:
    Wget is required to run this code.
    Link for download and instructions can be found here, http://gnuwin32.sourceforge.net/packages/wget.htm    

Authors:
Morgan Leaf
Brittany Casey

Acknowledgements:
Dr. Hessl for reducing the suffering when dealing with USGS data output headache!
