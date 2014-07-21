# Metallic

Metallic is a micro template for backend API.

## Installation

```rb
gem "metallic"
```

## Usage

```bash
$ metallic new <Application name>
```

```bash
$ metallic generate controller <Resource name>
```

```bash
$ metallic generate model <Resource name>
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

