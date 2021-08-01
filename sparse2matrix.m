function matrix=sparse2matrix(vec_cell)
matrix=vec_cell{2}*ones(vec_cell{1});
for a=3:size(vec_cell,2);
    matrix(vec_cell{a}(1),vec_cell{a}(2))=vec_cell{a}(3);
end