sbatch -p general -N 1  -J "set101"  -t 7-00  --mem 16384  -n 1  --mail-type=end  --mail-user=lhendri@email.unc.edu  -o "/nas/longleaf/home/lhendri/Users/lutz/Documents/econ/hc/gradpred/model1/out/set101/exp001/set101.out"  --wrap="matlab -nodesktop -nosplash -singleCompThread -r project_kure\(\'rs5\',\{101,\'cal\'\}\)"  
sbatch -p general -N 1  -J "set102"  -t 7-00  --mem 16384  -n 1  --mail-type=end  --mail-user=lhendri@email.unc.edu  -o "/nas/longleaf/home/lhendri/Users/lutz/Documents/econ/hc/gradpred/model1/out/set102/exp001/set102.out"  --wrap="matlab -nodesktop -nosplash -singleCompThread -r project_kure\(\'rs5\',\{102,\'cal\'\}\)"  
