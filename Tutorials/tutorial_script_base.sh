#!/bin/bash
FileIn="$1" JSON="$2"
o2-analysis-trackselection -b --configuration json://$JSON | \
o2-analysis-propagationservice -b --configuration json://$JSON | \
o2-analysis-multcenttable -b --configuration json://$JSON | \
o2-analysis-event-selection-service -b --configuration json://$JSON | \
o2-analysis-tracks-extra-v002-converter -b --configuration json://$JSON | \
o2-analysis-ft0-corrected-table -b --configuration json://$JSON | \
o2-analysis-je-emcal-correction-task -b --configuration json://$JSON | \
o2-analysis-je-emcal-cluster-hadronic-correction-task -b --configuration json://$JSON | \
o2-analysis-je-jet-deriveddata-producer -b --configuration json://$JSON | \
o2-analysis-je-jet-finder-data-charged -b --configuration json://$JSON | \
o2-analysis-je-jet-finder-data-full -b --configuration json://$JSON | \
o2-analysis-je-jet-luminosity-producer -b --configuration json://$JSON |
o2-analysis-je-jet-luminosity-calculator -b --configuration json://$JSON | \
o2-analysis-je-jet-tutorial -b --configuration json://$JSON --aod-file @$FileIn --shm-segment-size 16000000000 --min-failure-level error