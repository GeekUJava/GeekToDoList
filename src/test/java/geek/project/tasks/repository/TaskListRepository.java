package geek.project.tasks.repository;


import geek.project.tasks.domain.TaskList;
import org.springframework.data.repository.CrudRepository;

public interface TaskListRepository extends CrudRepository<TaskList, Integer> {
}
