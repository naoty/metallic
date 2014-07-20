# Metallic

Metallic is a template for Micro backend API.

## Installation

```rb
gem "metallic"
```

## Usage

```shell
$ metallic new <Application name>
```

```shell
$ metallic g controller <Resource name>
```

### Example

```shell
$ metallic new todo
$ cd todo
$ bundle install
$ metallic g controller tasks
$ rackup
$ curl http://localhost:9292/tasks
{}
```

