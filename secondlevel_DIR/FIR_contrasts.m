%-----------------------------------------------------------------------
% Job saved on 15-Jun-2023 14:04:22 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------

global input
clear matlabbatch

matlabbatch{1}.spm.stats.con.spmmat = input.con; %{'P:\userdata\gurana93\data\somatosensation\data_glm\firstlevel_scrub_dogHRF\smoothed\FIR\Ace\SPM.mat'};
matlabbatch{1}.spm.stats.con.delete = 0;

matlabbatch{1}.spm.stats.con.consess{1}.fcon.name = 'RightTouch';
matlabbatch{1}.spm.stats.con.consess{1}.fcon.weights = [eye(4) zeros(4)];
matlabbatch{1}.spm.stats.con.consess{1}.fcon.sessrep = 'bothsc';


matlabbatch{1}.spm.stats.con.consess{2}.fcon.name = 'LeftTouch';
matlabbatch{1}.spm.stats.con.consess{2}.fcon.weights = [zeros(4) eye(4)]; 
matlabbatch{1}.spm.stats.con.consess{2}.fcon.sessrep = 'bothsc';


