import java.util.*;

class Node implements Comparable<Node> {
    String label;
    int heuristic;
    int costFromStart;
    Node parent;
    List<Edge> neighbors = new ArrayList<>();
    
    Node(String label, int heuristic) {
        this.label = label;
        this.heuristic = heuristic;
    }

    @Override
    public int compareTo(Node other) {
        return Integer.compare(this.heuristic, other.heuristic);
    }
}

class Edge {
    Node target;
    int weight;

    Edge(Node target, int weight) {
        this.target = target;
        this.weight = weight;
    }
}

public class SearchAlgorithms {

    // 1. Breadth-First Search (BFS)
    public static void bfs(Node start, Node goal) {
        Queue<Node> queue = new LinkedList<>();
        Set<Node> visited = new HashSet<>();
        queue.add(start);
        visited.add(start);

        while (!queue.isEmpty()) {
            Node current = queue.poll();
            System.out.print(current.label + " ");
            if (current.equals(goal)) return;

            for (Edge edge : current.neighbors) {
                if (!visited.contains(edge.target)) {
                    visited.add(edge.target);
                    queue.add(edge.target);
                }
            }
        }
    }

    // 2. Depth-First Search (DFS)
    public static void dfs(Node start, Node goal, Set<Node> visited) {
        System.out.print(start.label + " ");
        if (start.equals(goal)) return;
        visited.add(start);

        for (Edge edge : start.neighbors) {
            if (!visited.contains(edge.target)) {
                dfs(edge.target, goal, visited);
            }
        }
    }

    // 3. Hill Climbing (Simple)
    public static void hillClimbing(Node start, Node goal) {
        Node current = start;
        while (current != null) {
            System.out.print(current.label + " ");
            if (current.equals(goal)) return;

            Node next = null;
            int bestH = current.heuristic;

            for (Edge edge : current.neighbors) {
                if (edge.target.heuristic < bestH) {
                    bestH = edge.target.heuristic;
                    next = edge.target;
                }
            }
            current = next; // Berhenti jika tidak ada tetangga yang lebih baik
        }
    }

    // 4. Best-First Search
    public static void bestFirstSearch(Node start, Node goal) {
        PriorityQueue<Node> pq = new PriorityQueue<>(Comparator.comparingInt(n -> n.heuristic));
        Set<Node> visited = new HashSet<>();
        pq.add(start);

        while (!pq.isEmpty()) {
            Node current = pq.poll();
            System.out.print(current.label + " ");
            if (current.equals(goal)) return;
            visited.add(current);

            for (Edge edge : current.neighbors) {
                if (!visited.contains(edge.target)) {
                    pq.add(edge.target);
                }
            }
        }
    }

    // 5. A* Search
    public static void aStarSearch(Node start, Node goal) {
        PriorityQueue<Node> pq = new PriorityQueue<>(Comparator.comparingInt(n -> (n.costFromStart + n.heuristic)));
        start.costFromStart = 0;
        pq.add(start);
        Set<Node> visited = new HashSet<>();

        while (!pq.isEmpty()) {
            Node current = pq.poll();
            System.out.print(current.label + " ");
            if (current.equals(goal)) return;
            visited.add(current);

            for (Edge edge : current.neighbors) {
                int newCost = current.costFromStart + edge.weight;
                if (!visited.contains(edge.target) || newCost < edge.target.costFromStart) {
                    edge.target.costFromStart = newCost;
                    pq.add(edge.target);
                }
            }
        }
    }

    public static void main(String[] args) {
        // Inisialisasi Node (Label, Heuristic)
        Node a = new Node("A", 10);
        Node b = new Node("B", 8);
        Node c = new Node("C", 5);
        Node d = new Node("D", 7);
        Node g = new Node("G", 0);

        // Inisialisasi Edge (Target, Weight)
        a.neighbors.add(new Edge(b, 2));
        a.neighbors.add(new Edge(d, 5));
        b.neighbors.add(new Edge(c, 3));
        c.neighbors.add(new Edge(g, 4));
        d.neighbors.add(new Edge(g, 10));

        System.out.println("BFS Path:"); bfs(a, g);
        System.out.println("\nDFS Path:"); dfs(a, g, new HashSet<>());
        System.out.println("\nHill Climbing Path:"); hillClimbing(a, g);
        System.out.println("\nBest-First Path:"); bestFirstSearch(a, g);
        System.out.println("\nA* Path:"); aStarSearch(a, g);
    }
}