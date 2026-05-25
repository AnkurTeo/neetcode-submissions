/**
 * Definition of Interval:
 * public class Interval {
 *     public int start, end;
 *     public Interval(int start, int end) {
 *         this.start = start;
 *         this.end = end;
 *     }
 * }
 */

/**
 * Definition of Interval:
 * public class Interval {
 *     public int start, end;
 *     public Interval(int start, int end) {
 *         this.start = start;
 *         this.end = end;
 *     }
 * }
 */




public class Solution {
    public int minMeetingRooms(List<Interval> intervals) {
        if (intervals == null || intervals.isEmpty()) {
            return 0;
        }

        // Step 1: Sort intervals by start time
        intervals.sort((a, b) -> Integer.compare(a.start, b.start));

        // Step 2: Min Heap to store meeting end times
        PriorityQueue<Integer> minHeap = new PriorityQueue<>();
        int maxRooms = 0;

        for (Interval interval : intervals) {
            // Step 3: Remove meetings that have ended
            while (!minHeap.isEmpty() && minHeap.peek() <= interval.start) {
                minHeap.poll();
            }

            // Step 4: Add the current meeting's end time
            minHeap.offer(interval.end);

            // Step 5: Track the max number of rooms needed
            maxRooms = Math.max(maxRooms, minHeap.size());
        }

        return maxRooms;
    }
}

