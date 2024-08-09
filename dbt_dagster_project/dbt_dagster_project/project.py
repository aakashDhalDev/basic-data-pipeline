from pathlib import Path

from dagster_dbt import DbtProject

basic_pipeline_project = DbtProject(
    project_dir=Path(__file__).joinpath("..", "..", "..", "basic_pipeline").resolve(),
    packaged_project_dir=Path(__file__).joinpath("..", "..", "dbt-project").resolve(),
)
basic_pipeline_project.prepare_if_dev()