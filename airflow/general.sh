# 1. Go to your project folder
cd /path/to/your/project

# 2. Activate the virtual environment
source venv/bin/activate

# 3. Check if Airflow is available
airflow version

# 4. List all DAGs
airflow dags list

# 5. List tasks from a DAG
airflow tasks list DAG_ID

# 6. List tasks as a dependency tree
airflow tasks list DAG_ID --tree

# 7. Trigger a DAG manually
airflow dags trigger DAG_ID

# 8. List DAG runs
airflow dags list-runs DAG_ID

# 9. List only failed DAG runs
airflow dags list-runs DAG_ID --state failed

# 10. See task states for a specific DAG run
airflow tasks states-for-dag-run DAG_ID RUN_ID

# 11. Watch task states update every 5 seconds
watch -n 5 'airflow tasks states-for-dag-run DAG_ID RUN_ID'

# 12. See the state of one specific task
airflow tasks state DAG_ID TASK_ID RUN_ID

# 13. Check Airflow home
echo $AIRFLOW_HOME

# 14. List log attempts for a task
ls -la "$AIRFLOW_HOME/logs/dag_id=DAG_ID/run_id=RUN_ID/task_id=TASK_ID/"

# 15. See the latest task log
tail -n 100 "$AIRFLOW_HOME/logs/dag_id=DAG_ID/run_id=RUN_ID/task_id=TASK_ID/attempt=1.log"

# 16. Follow the task log in real time
tail -f "$AIRFLOW_HOME/logs/dag_id=DAG_ID/run_id=RUN_ID/task_id=TASK_ID/attempt=1.log"

# 17. Re-run failed tasks from a period
airflow tasks clear DAG_ID \
  --start-date YYYY-MM-DD \
  --end-date YYYY-MM-DD \
  --only-failed \
  --yes

# 18. Trigger the DAG again with a custom run ID
airflow dags trigger DAG_ID --run-id manual_retry_YYYY_MM_DD

# 19. Deactivate the virtual environment
deactivate