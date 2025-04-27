import std;
enum int rows = 10;
enum int cols = 10;

int[][] matmul (int num_rows_matrix_1, int num_cols_matrix_1, int num_rows_matrix_2, int num_cols_matrix_2, int [][] mat_1, int[][]mat_2){
    
    int[][] result_matrix = new int[][](rows,cols);
    if(num_cols_matrix_1 == num_rows_matrix_2){
        for(size_t row_iter = 0; row_iter < num_rows_matrix_1; ++row_iter){
            for(size_t col_iter = 0; col_iter < num_cols_matrix_2; ++col_iter){
                for(size_t mt_1_col = 0; mt_1_col < num_cols_matrix_1; ++mt_1_col){
                    result_matrix[row_iter][col_iter] += mat_1[col_iter][mt_1_col] * mat_2[mt_1_col][col_iter];
                }
            }
        }
    }
    return result_matrix[0..num_rows_matrix_1][0..num_cols_matrix_2];
}

int main(){
    int row_1 = 2;
    int row_2 = 2;
    int col_1 = 2;
    int col_2 = 2;

    int[][] matrix_1 = [[1,2,3],[4,5,6]];

    int[][] matrix_2 = [[0,0,0],[0,0,0]];

    auto res_mat = matmul(row_1, col_1, row_2, col_2, matrix_1, matrix_2);
    writeln("Resultant matrix is", res_mat);
    return 0;
}