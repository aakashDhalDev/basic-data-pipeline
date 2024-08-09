from dagster import Definitions
from dagster_dbt import DbtCliResource
from .assets import basic_pipeline_dbt_assets
from .project import basic_pipeline_project
from .schedules import schedules

defs = Definitions(
    assets=[basic_pipeline_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=basic_pipeline_project),
    },
)