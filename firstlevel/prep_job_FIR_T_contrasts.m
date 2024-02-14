%-----------------------------------------------------------------------
% Job saved on 15-Jun-2023 14:04:22 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------

global input
clear matlabbatch

matlabbatch{1}.spm.stats.con.spmmat = input.con; %{'P:\userdata\gurana93\data\somatosensation\data_glm\firstlevel_scrub_dogHRF\smoothed\FIR\Ace\SPM.mat'};
matlabbatch{1}.spm.stats.con.delete = 0;

matlabbatch{1}.spm.stats.con.consess{1}.tcon.name = 'RightTouch';
matlabbatch{1}.spm.stats.con.consess{1}.tcon.weights = [1 1 1 1, zeros(1, 4)];
matlabbatch{1}.spm.stats.con.consess{1}.tcon.sessrep = 'bothsc';


matlabbatch{1}.spm.stats.con.consess{2}.tcon.name = 'LeftTouch';
matlabbatch{1}.spm.stats.con.consess{2}.tcon.weights = [zeros(1, 4), 1 1 1 1]; 
matlabbatch{1}.spm.stats.con.consess{2}.tcon.sessrep = 'bothsc';


matlabbatch{1}.spm.stats.con.consess{3}.tcon.name = 'RightOnevR4';
matlabbatch{1}.spm.stats.con.consess{3}.tcon.weights = [1 0 0 -1, zeros(1,4)];
matlabbatch{1}.spm.stats.con.consess{3}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{4}.tcon.name = 'LeftOnevL4';
matlabbatch{1}.spm.stats.con.consess{4}.tcon.weights = [zeros(1,4), 1 0 0 -1]; 
matlabbatch{1}.spm.stats.con.consess{4}.tcon.sessrep = 'bothsc';



matlabbatch{1}.spm.stats.con.consess{5}.tcon.name = 'RightOne';
matlabbatch{1}.spm.stats.con.consess{5}.tcon.weights = [1 0 0 0, zeros(1,4)];
matlabbatch{1}.spm.stats.con.consess{5}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{6}.tcon.name = 'LeftOne';
matlabbatch{1}.spm.stats.con.consess{6}.tcon.weights = [zeros(1,4), 1 0 0 0]; 
matlabbatch{1}.spm.stats.con.consess{6}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{7}.tcon.name = 'RightTwo';
matlabbatch{1}.spm.stats.con.consess{7}.tcon.weights = [0 1 0 0, zeros(1,4)];
matlabbatch{1}.spm.stats.con.consess{7}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{8}.tcon.name = 'LeftTwo';
matlabbatch{1}.spm.stats.con.consess{8}.tcon.weights = [zeros(1,4), 0 1 0 0]; 
matlabbatch{1}.spm.stats.con.consess{8}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{9}.tcon.name = 'RightThree';
matlabbatch{1}.spm.stats.con.consess{9}.tcon.weights = [0 0 1 0, zeros(1,4)];
matlabbatch{1}.spm.stats.con.consess{9}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{10}.tcon.name = 'LeftThree';
matlabbatch{1}.spm.stats.con.consess{10}.tcon.weights = [zeros(1,4), 0 0 1 0]; 
matlabbatch{1}.spm.stats.con.consess{10}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{11}.tcon.name = 'RightFour';
matlabbatch{1}.spm.stats.con.consess{11}.tcon.weights = [0 0 0 1, zeros(1,4)];
matlabbatch{1}.spm.stats.con.consess{11}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{12}.tcon.name = 'LeftFour';
matlabbatch{1}.spm.stats.con.consess{12}.tcon.weights = [zeros(1,4), 0 0 0 1]; 
matlabbatch{1}.spm.stats.con.consess{12}.tcon.sessrep = 'bothsc';

%%% next ones only in theory, if the previous are significant (exploratory)
%%% 
% matlabbatch{1}.spm.stats.con.consess{5}.fcon.name = 'RightOnevR2';
% matlabbatch{1}.spm.stats.con.consess{5}.fcon.weights = [input.mat2 zeros(4)];
% matlabbatch{1}.spm.stats.con.consess{5}.fcon.sessrep = 'bothsc';
% 
% matlabbatch{1}.spm.stats.con.consess{6}.fcon.name = 'LeftOnevL2';
% matlabbatch{1}.spm.stats.con.consess{6}.fcon.weights = [zeros(4) input.mat2]; 
% matlabbatch{1}.spm.stats.con.consess{6}.fcon.sessrep = 'bothsc';
% 
% 
% matlabbatch{1}.spm.stats.con.consess{7}.fcon.name = 'RightOnevR3';
% matlabbatch{1}.spm.stats.con.consess{7}.fcon.weights = [input.mat3 zeros(4)];
% matlabbatch{1}.spm.stats.con.consess{7}.fcon.sessrep = 'bothsc';
% 
% matlabbatch{1}.spm.stats.con.consess{8}.fcon.name = 'LeftOnevL3';
% matlabbatch{1}.spm.stats.con.consess{8}.fcon.weights = [zeros(4) input.mat3]; 
% matlabbatch{1}.spm.stats.con.consess{8}.fcon.sessrep = 'bothsc';
% 
% 
% matlabbatch{1}.spm.stats.con.consess{9}.fcon.name = 'RightFourvR2';
% matlabbatch{1}.spm.stats.con.consess{9}.fcon.weights = [input.mat4 zeros(4)];
% matlabbatch{1}.spm.stats.con.consess{9}.fcon.sessrep = 'bothsc';
% 
% matlabbatch{1}.spm.stats.con.consess{10}.fcon.name = 'LeftFourvL2';
% matlabbatch{1}.spm.stats.con.consess{10}.fcon.weights = [zeros(4) input.mat4]; 
% matlabbatch{1}.spm.stats.con.consess{10}.fcon.sessrep = 'bothsc';
% 
% 
% matlabbatch{1}.spm.stats.con.consess{11}.fcon.name = 'RightFourvR3';
% matlabbatch{1}.spm.stats.con.consess{11}.fcon.weights = [input.mat5 zeros(4)];
% matlabbatch{1}.spm.stats.con.consess{11}.fcon.sessrep = 'bothsc';
% 
% matlabbatch{1}.spm.stats.con.consess{12}.fcon.name = 'LeftFourvL3';
% matlabbatch{1}.spm.stats.con.consess{12}.fcon.weights = [zeros(4) input.mat5]; 
% matlabbatch{1}.spm.stats.con.consess{12}.fcon.sessrep = 'bothsc';
% 
% 
% matlabbatch{1}.spm.stats.con.consess{13}.fcon.name = 'RightTwovR3';
% matlabbatch{1}.spm.stats.con.consess{13}.fcon.weights = [input.mat6 zeros(4)];
% matlabbatch{1}.spm.stats.con.consess{13}.fcon.sessrep = 'bothsc';
% 
% matlabbatch{1}.spm.stats.con.consess{14}.fcon.name = 'LeftTwovL3';
% matlabbatch{1}.spm.stats.con.consess{14}.fcon.weights = [zeros(4) input.mat6]; 
% matlabbatch{1}.spm.stats.con.consess{14}.fcon.sessrep = 'bothsc';