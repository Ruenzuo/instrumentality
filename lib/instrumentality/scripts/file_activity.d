syscall::read*:entry,syscall::write*:entry
/ pid == $target /
{
  printf("%s file %s by %s\n", fds[arg0].fi_pathname, probefunc, execname)
}
