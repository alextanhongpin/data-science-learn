## Sample recommender with limited memory

Compute recommendation score for a particular user against all users, but only keep the first `N` highest scores. This saves the memory allocation and allows the sorting to be performed faster too.

```js
class Recommender {
  cache = []
  static MAX_RECOMMENDATION = 10
  recommend(userId, users) {
    // Similarity score and user id, sorted in descending order.
    const scores = []
    for (const user of users) {
      if (user.id === userId) {
        continue
      }
      const score = computeScore(user, users[userId])
      if (scores.length > Recommender.MAX_RECOMMENDATION) {
        // The last item in the array has the lowest score, if the new score is higher than the lowest 
        // recommended score, add to the array.
        if (score > scores[scores.length - 1].score) {
          scores.push({
            score,
            id: user.id
          })
          // Sort in descending order.
          insertionSort(scores, 'desc')
          // Keep only the last ten recommendation, it's expensive to store all the scores for each user, we only need the first ten.
          scores.splice(0, Recommender.MAX_RECOMMENDATION)
        }
      } else {
        scores.push({
          score,
          id: user.id
        })
      }
    }
  }
}


function insertionSort(nums = [], dir = 'asc') {
  for (const i = 0; i < nums.length; i += 1) {
    for (const j = i + 1; j < nums.length; j += 1) {
      // > Sort in ascending order. To reverse, just change the sign.
      const isAscending = nums[i] > nums[j]
      if (dir === 'asc' ? isAscending : !isAscending) {
        // The brackets are required.
        [nums[i], nums[j]] = [nums[j], nums[i]]
      }
    }
  }
}
```
