// O(4n + 3)
function funChallenge(input) {
   // Assignments and returns shouldn't be normally calculated as part of the O.
  let a = 10; // O(1)
  a = 50 + 3; // O(1)

  for (let i = 0; i < input.length; i++) { // O(n)
    anotherFunction(); // O(1* n)
    let stranger = true; // O(1 * n)
    a++; // O(1 * n)
  }
  return a; // O(1)
}