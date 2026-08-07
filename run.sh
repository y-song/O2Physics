# OPTION_TUTORIAL="-b --configuration json://myConfig.json"
# o2-analysistutorial-mm-my-example-task ${OPTION_TUTORIAL}

OPTION="-b --configuration json://aimeric_config.json"
o2-analysis-trackselection ${OPTION} | \
o2-analysis-propagationservice ${OPTION} | \
o2-analysis-event-selection-service ${OPTION} | \
o2-analysis-je-jet-deriveddata-producer ${OPTION} | \
o2-analysis-je-estimator-rho ${OPTION} | \
o2-analysis-je-jet-finder-mcd-charged ${OPTION} | \
o2-analysis-je-jet-finder-charged-qa ${OPTION} --aod-file 559613/AO2D_013.root --shm-segment-size 16000000000 --min-failure-level error