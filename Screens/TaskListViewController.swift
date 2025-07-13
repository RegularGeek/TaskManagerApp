
import UIKit

class TaskListViewController: UITableViewController {
    var tasks: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Tasks"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "taskCell")
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.title
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        cell.detailTextLabel?.text = formatter.string(from: task.dueDate)
        return cell
    }
}
