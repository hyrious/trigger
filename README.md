## Trigger

Dead simple task manager written in ruby.

```shell-session
> ruby trigger.rb
server running at http://localhost:4000
```

### Usage

**Via Cli**

```shell-session
> ruby trigger.rb --repl
connected to existing server at http://localhost:4000
trigger> ls
#1 [running] sleep 10
#2 [stopped] echo 1
trigger> kill 1
#1 [stopped] sleep 10 (exit code: 1)
trigger> cd 'some dir'
pwd: some dir
trigger> !ruby task.rb
#3 [running] ruby task.rb
trigger> kill *
#3 [stopped] ruby task.rb (exit code: 0)
trigger> rm 1
removed #1
trigger> run 2
#2 [running] echo 1
trigger> log 2
1
trigger> monit 2
(press ctrl-c to quit monitor mode)
1
#2 [stopped] echo 1 (exit code: 0)
trigger> help
avaiable commands:
    !<command>  run command and add it to list
    ls          list tasks
    cd <dir>    change dir
    popd        change dir back
    run <id>    kill #<id> and run that task again
    run *       kill all tasks and run them again
    kill <id>   kill #<id>
    kill *      kill all tasks
    rm <id>     kill #<id> and remove it from list
    rm *        kill all tasks and clear the list
    log <id>    view #<id>'s log
    monit <id>  view #<id>'s log on the fly
    exit        quit trigger repl
    shutdown    shutdown server (implies kill *)
```

**Via JSON-RPC and Browser**

I'm too lazy to write this section.

### License

MIT @ [hyrious](https://github.com/hyrious)
