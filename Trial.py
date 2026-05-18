import heapq
from collections import deque

class SearchSolver:
    def __init__(self, grid, start, goal):
        self.grid = grid
        self.start = start
        self.goal = goal
        self.rows = len(grid)
        self.cols = len(grid[0])
        self.directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]

    def _is_valid(self, x, y):
        return 0 <= x < self.rows and 0 <= y < self.cols and self.grid[x][y] == 0

    def _manhattan_heuristic(self, pos):
        # h(n) = |x1 - x2| + |y1 - y2|
        return abs(pos[0] - self.goal[0]) + abs(pos[1] - self.goal[1])

    def bfs(self):
        queue = deque([self.start])
        parent_map = {self.start: None}
        
        while queue:
            current = queue.popleft()
            if current == self.goal:
                return self._reconstruct_path(parent_map)
            
            for dx, dy in self.directions:
                neighbor = (current[0] + dx, current[1] + dy)
                if self._is_valid(*neighbor) and neighbor not in parent_map:
                    parent_map[neighbor] = current
                    queue.append(neighbor)
        return None

    def a_star(self):
        # Priority Queue stores (f_score, current_node)
        pq = [(0 + self._manhattan_heuristic(self.start), self.start)]
        parent_map = {self.start: None}
        g_score = {self.start: 0}
        
        while pq:
            _, current = heapq.heappop(pq)
            
            if current == self.goal:
                return self._reconstruct_path(parent_map)
            
            for dx, dy in self.directions:
                neighbor = (current[0] + dx, current[1] + dy)
                if self._is_valid(*neighbor):
                    tentative_g = g_score[current] + 1
                    if neighbor not in g_score or tentative_g < g_score[neighbor]:
                        g_score[neighbor] = tentative_g
                        f_score = tentative_g + self._manhattan_heuristic(neighbor)
                        parent_map[neighbor] = current
                        heapq.heappush(pq, (f_score, neighbor))
        return None

    def _reconstruct_path(self, parent_map):
        path = []
        curr = self.goal
        while curr:
            path.append(curr)
            curr = parent_map[curr]
        return path[::-1]

    def visualize(self, path):
        if not path:
            print("No path found.")
            return
        
        display = [["#" if cell == 1 else "." for cell in row] for row in self.grid]
        for r, c in path:
            display[r][c] = "*"
        sr, sc = self.start
        gr, gc = self.goal
        display[sr][sc] = "S"
        display[gr][gc] = "G"
        
        print("\n".join(" ".join(row) for row in display))

# Example Usage
if __name__ == "__main__":
    # 0 = Path, 1 = Wall
    grid_map = [
        [0, 0, 0, 0, 0],
        [0, 1, 1, 1, 0],
        [0, 0, 0, 1, 0],
        [1, 1, 0, 0, 0],
        [0, 0, 0, 1, 0]
    ]
    solver = SearchSolver(grid_map, (0, 0), (4, 4))
    
    print("--- BFS Path ---")
    bfs_path = solver.bfs()
    solver.visualize(bfs_path)
    
    print("\n--- A* Path ---")
    astar_path = solver.a_star()
    solver.visualize(astar_path)
sudo named-checkconf
sudo systemctl restart bind9






