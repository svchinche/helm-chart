apiVersion: v1
entries:
  common:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.308007879-04:00"
    description: A Helm chart for config microservice
    digest: 8001bb6afea045ea936e2d57d33263efb8d12944b5aba259653e529b49b49d34
    name: common
    urls:
    - https://svchinche.github.io/helm-chart/common-0.1.0.tgz
    version: 0.1.0
  config:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.30924249-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for config microservice
    digest: 3cf5eb0daa60785594b3e562fa0ee2f93ace08f84a36d6f5c1e0c45448d59e80
    name: config
    urls:
    - https://svchinche.github.io/helm-chart/config-0.1.0.tgz
    version: 0.1.0
  department:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.310124036-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for department microservice
    digest: 7ee176b157600365548f7a8391c8e8b5fcf0183389099094e6b93726d719bd82
    name: department
    urls:
    - https://svchinche.github.io/helm-chart/department-0.1.0.tgz
    version: 0.1.0
  employee:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.310960639-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for employee microservice
    digest: 32429aa6b6bcfb3d33ae23b640df67a313f19804b87188325d67f79f14ea7f6b
    name: employee
    urls:
    - https://svchinche.github.io/helm-chart/employee-0.1.0.tgz
    version: 0.1.0
  mongo:
  - apiVersion: v1
    appVersion: "1.0"
    created: "2020-06-08T02:56:31.312539417-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for mongo microservice
    digest: 2931513c0fea3eda5958a3c3f4f079ea31df34f027c4049e8c4088d0c4598312
    name: mongo
    urls:
    - https://svchinche.github.io/helm-chart/mongo-0.1.0.tgz
    version: 0.1.0
  organization:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.313434033-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for organization microservice
    digest: b8248720d30aea89e1a1f2ab39aaaedcad249281141861e3d314ad5fd9b894ea
    name: organization
    urls:
    - https://svchinche.github.io/helm-chart/organization-0.1.0.tgz
    version: 0.1.0
  proxy:
  - apiVersion: v1
    appVersion: "1.3"
    created: "2020-06-08T02:56:31.314301493-04:00"
    dependencies:
    - name: common
      repository: file://../common
      version: 0.1.0
    description: A Helm chart for proxy microservice
    digest: d4d282d3959740983db9fb9d466786b4fa669dc7cffe68d94a90e401c7a806e8
    name: proxy
    urls:
    - https://svchinche.github.io/helm-chart/proxy-0.1.0.tgz
    version: 0.1.0
generated: "2020-06-08T02:56:31.306751117-04:00"
