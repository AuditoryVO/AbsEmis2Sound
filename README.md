# AbsEmis2Sound
Auditory analysis of the pre-calculated emission and absorption lines of the Large Early Galaxy Census (LEGA-C) spectra. Data: STScI.
![ABSEMIS-GitHub](https://github.com/AuditoryVO/AbsEmis2Sound/assets/144262864/e69c2231-b5c2-4458-afa5-bdb2317ee030)

CONTENTS

- Jupyter notebook: AbsEmis2Sound.ipynb
- CSound/Cabbage file: AbsEmis2Sound.csd
- Cabbage mask files: Init.png, and Init2.png
- Sample spectra: Abs.png, and Emis.png
- LICENSE
- README
- requirements.txt

CABBAGE/CSOUND INSTALLATION

1- Download and install CSound 6.15 from: https://github.com/csound/csound/releases/tag/6.15.0

2- Download Cabbage from (current version): https://cabbageaudio.com/download/ 

3- Install only Cabbage from the downloaded Cabbage package.

   Warning: Current Cabbage version 2.9.0 allows to optionally install the latest version of CSound. This default option should be unchecked not to overwrite CSound 6.15.
   Latests versions of CSound require additional plugins to work with the image CSound opcodes, so they should not be used.

ABSEMIS2SOUND INSTALLATION

1- Download the spectra from: https://github.com/spacetelescope/jdat_notebooks/blob/main/notebooks/mos-spectroscopy/MOSspec_sv06_revised.ipynb

2- Download all the content of this repository into the same folder

3- Install all the dependencies included in the requirements.txt file

4- To reproduce the sonifications:
   - Launch Cabbage, open AbsEmis2Sound.csd, and press play
   
   Important note: Cabbage 2.9.0 requires CamelCase update via: File/Convert Identifiers to camelCase. Also change manually “PluginID” to “PluginId” to avoid warnings.

   - Run the Jupyter notebook (AbsEmis2Sound.ipynb)
   - Add your path to the downloaded files before running all the cells

Enjoy the sonifications!

Developer system info: Python 3.8.5 - Cabbage 2.5.0 - i7 macOS 10.15.7 - 32 GB - 1536 MB

