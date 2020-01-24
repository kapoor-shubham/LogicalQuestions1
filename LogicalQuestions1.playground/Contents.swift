import UIKit

/*  1.Diagonal Difference
    
    Print the absolute difference between the sums of the matrix's two diagonals as a single integer.
    
    11  2   4
    4   5   6
    10  8   -12
    
    Diagonal1 -> 11 + 5 - 12 = 4
    Diagonal2 -> 4 + 5 + 10 = 19
    Diagonal Difference -> |4 - 19| = 15
 */

func diagonalDifference(arr: [[Int]]) {

    let n = arr.count
    
    var preimaryDiagonalSum = 0
    var secondaryDiagonalSum = 0
    
    for index in 0..<n {
        preimaryDiagonalSum = preimaryDiagonalSum + arr[index][index]
        secondaryDiagonalSum = secondaryDiagonalSum + arr[index][n-index-1]
    }

    print(abs(preimaryDiagonalSum - secondaryDiagonalSum))
}

diagonalDifference(arr: [[11,2,4],[4,5,6],[10,8,-12]])


/*-----------------------------------------------------NextQuestion-----------------------------------------------------*/

/* 2.Get the probelbility of getting a +ve -Ve & 0 number in Array.*/


func plusMinus(arr: [Int]) -> Void {

    var negativeNumber = 0.0
    var zeroNumber = 0.0
    var positiveNumber = 0.0
    
    for item in arr {
    
        if item < 0 {
            negativeNumber = negativeNumber + 1.0
        } else if item == 0 {
            zeroNumber = zeroNumber + 1.0
        } else {
            positiveNumber = positiveNumber + 1.0
        }
    }
    
    let arrayCount = Float(arr.count)

    print(Float(positiveNumber)/arrayCount)
    print(Float(negativeNumber)/arrayCount)
    print(Float(zeroNumber)/arrayCount)
}

plusMinus(arr: [-4,3,-9,0,4,1])


/*-----------------------------------------------------NextQuestion-----------------------------------------------------*/


/* 3.Make a Piramid of Hash(#)
      #
     ##
    ###
   ####
  #####
 ######
 */

func makeHashPiramid(piramidHeight: Int) {
    
    for index in 0..<piramidHeight {
        let str1 = String(repeating: " ", count: piramidHeight - (index + 1))
        let str2 = String(repeating: "#", count: (index + 1))
        print(str1+str2)
    }
}

makeHashPiramid(piramidHeight: 4)
