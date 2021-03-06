function tests = zip_files_test

tests = functiontests(localfunctions);

end


function oneTest(testCase)

compS = configLH.Computer([]);
zipFile = fullfile(compS.testFileDir,  'zip_files_test.zip');
fileListV = {which('EnumLH.m'),  which('statsLH.std_w')};

% Need inspect file by hand to verify contents (not ideal)
filesLH.zip_files(zipFile, fileListV, true);
filesLH.zip_files(zipFile, fileListV, false);

end