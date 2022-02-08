module E1
export rowmatmul!, colmatmul!, rowmatmuldot!, colmatmuldot!

import LinearAlgebra:dot

function rowmatmul!(C, A, B)
    for i in 1:size(C, 1)
        for j in 1:size(C,2)
            C[i,j] = zero(eltype(C))
            for k in 1:size(A,2)
                C[i, j] += A[i,k]*B[k,j]
            end
        end
    end
end

function colmatmul!(C, A, B)
    for j in 1:size(C, 1)
        for i in 1:size(C, 2)
            C[i,j] = zero(eltype(C))
            for k in 1:size(A,2)
                C[i, j] += A[i,k]*B[k,j]
            end
        end
    end
end

function rowmatmuldot!(C,A,B)
    for i in 1:size(C, 1)
        for j in 1:size(C,2)
            C[i,j] = zero(eltype(C))
            C[i,j] += dot(A[i,:], B[:,j])
        end
    end
end

function colmatmuldot!(C,A,B)
    for j in 1:size(C, 1)
        for i in 1:size(C,2)
            C[i,j] = zero(eltype(C))
            C[i,j] += dot(A[i,:], B[:,j])
        end
    end
end

end
