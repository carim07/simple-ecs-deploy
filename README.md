# simple-ecs-deploy
[Drone](https://drone.io) plugin to deploy to ECS.

To learn more about Drone plugins, visit [this link](http://plugins.drone.io/). To learn more about Drone in general, visit [their documentation](https://readme.drone.io/).

## Usage

To be used in a Drone Docker pipeline, as described in [here](https://readme.drone.io/pipeline/docker/syntax/plugins/). 

A very simple example can be found [here](https://github.com/carim07/tan-infrastructure/blob/main/drone-pipelines/lessonbuilder-dev.yml).

## To Do

Many things to improve. To name a few:
* Monitoring health of Service Deployments, as explained [here](https://medium.com/@aaron.kaz.music/monitoring-the-health-of-ecs-service-deployments-baeea41ae737)
* Remove container definition from a Drone Secret, use source code from a repository instead
* Make it optional to register a new task definition
* Get task definition from source code? the same as with the Container Definition?


