%-----------------------------------------------------------------------
% Job saved on 09-Nov-2018 13:09:35 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
%-----------------------------------------------------------------------
global input
clear matlabbatch

matlabbatch{1}.spm.stats.con.spmmat = input.con;
matlabbatch{1}.spm.stats.con.consess{1}.tcon.name = 'touch-right'; %how did I define this ... odd 
matlabbatch{1}.spm.stats.con.consess{1}.tcon.weights = [1 0];
matlabbatch{1}.spm.stats.con.consess{1}.tcon.sessrep = 'bothsc';

matlabbatch{1}.spm.stats.con.consess{2}.tcon.name = 'touch-left';
matlabbatch{1}.spm.stats.con.consess{2}.tcon.weights = [0 1];
matlabbatch{1}.spm.stats.con.consess{2}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.delete = 0;

matlabbatch{1}.spm.stats.con.consess{3}.tcon.name = 'touch_general';
matlabbatch{1}.spm.stats.con.consess{3}.tcon.weights = [1 1];
matlabbatch{1}.spm.stats.con.consess{3}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.delete = 0;

matlabbatch{1}.spm.stats.con.consess{4}.tcon.name = 'right_v_left';
matlabbatch{1}.spm.stats.con.consess{4}.tcon.weights = [1 -1];
matlabbatch{1}.spm.stats.con.consess{4}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.delete = 0;

matlabbatch{1}.spm.stats.con.consess{5}.tcon.name = 'left_v_right';
matlabbatch{1}.spm.stats.con.consess{5}.tcon.weights = [-1 1];
matlabbatch{1}.spm.stats.con.consess{5}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.delete = 0;
 
