for file in *.nex 
 do
    cp $file file
    rb mcmc_Mk.Rev 
    cp mk.log $file.log
    cp mk.trees $file.trees
    cp Mk.mcc.tre $file.mcc.tre 
done