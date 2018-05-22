#!/bin/bash

#Just playing around with git
FILE="/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen0_M125_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen1_M125_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen2_M125_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen3_M125_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen4_M125_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen0_M120_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen1_M120_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen2_M120_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen3_M120_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen4_M120_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen0_M130_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen1_M130_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen2_M130_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen3_M130_13TeV.root,/vols/build/cms/jl2117/trilinear/CMSSW_9_4_4/src/workspace_test/test_output/output_ttHgen4_M130_13TeV.root"

EXT="tri_ttHHad_pTH"
echo "Ext is $EXT"
PROCS="ttHgen0,ttHgen1,ttHgen2,ttHgen3,ttHgen4"
echo "Procs are $PROCS"
CATS="reco0,reco1,reco2,reco3,reco4"
echo "Cats are $CATS"
INTLUMI=35.9
echo "Intlumi is $INTLUMI"
BATCH="IC"
echo "Batch is $BATCH"
QUEUE="hep.q"
echo "Batch is $QUEUE"
BSWIDTH=3.400000
echo "Bswidth is $BSWIDTH"
NBINS=320
echo "Nbins is $NBINS"

SCALES="" #"HighR9EB,HighR9EE,LowR9EB,LowR9EE,Gain1EB,Gain6EB"
SCALESCORR="" #"MaterialCentralBarrel,MaterialOuterBarrel,MaterialForward,FNUFEE,FNUFEB,ShowerShapeHighR9EE,ShowerShapeHighR9EB,ShowerShapeLowR9EE,ShowerShapeLowR9EB"
SCALESGLOBAL="" #"NonLinearity:UntaggedTag_0:2,Geant4"
SMEARS="" #"HighR9EBPhi,HighR9EBRho,HighR9EEPhi,HighR9EERho,LowR9EBPhi,LowR9EBRho,LowR9EEPhi,LowR9EERho"

#MASSLIST="125"
#MASSLIST="120,123,124,125,126,127,130"
MASSLIST="120,125,130"
MLOW=120
MHIGH=130
echo "Masslist is $MASSLIST"

#cd /vols/build/cms/es811/FreshStart/Pass6/CMSSW_7_4_7/src/flashggFinalFit/Signal
#eval `scramv1 runtime -sh`
#./runSignalScripts.sh -i $FILE -p $PROCS -f $CATS --ext $EXT --intLumi $INTLUMI --batch $BATCH --massList $MASSLIST --bs $BSWIDTH \
#                        --smears $SMEARS --scales $SCALES --scalesCorr $SCALESCORR --scalesGlobal $SCALESGLOBAL --useSSF 1 --useDCB_1G 0 --calcPhoSystOnly
./runSignalScripts.sh -i $FILE -p $PROCS -f $CATS --ext $EXT --intLumi $INTLUMI --batch $BATCH --massList $MASSLIST --bs $BSWIDTH \
                        --smears $SMEARS --scales $SCALES --scalesCorr $SCALESCORR --scalesGlobal $SCALESGLOBAL --useSSF 1 --useDCB_1G 0
