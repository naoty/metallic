# Metallic

Metallic is a template for Micro backend API.

## Installation

```rb
gem "metallic"
```

## Usage

```bash
$ metallic new <Application name>
```

```bash
$ metallic g controller <Resource name>
```

```bash
$ metallic g model <Resource name>
$ rake db:migrate
```

### Example

```bash
$ metallic new todo
$ cd todo
$ bundle install
$ metallic g controller tasks
$ rackup
$ curl http://localhost:9292/tasks
{}
```

