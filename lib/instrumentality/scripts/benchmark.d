instr$target:::benchmark_begin
{
  time = timestamp;
  tag = copyinstr(arg0);
  tag_times[tag] = time;
}

instr$target:::benchmark_end
/ tag_times[copyinstr(arg0)] != 0 /
{
  tag = copyinstr(arg0);
  time = (timestamp - tag_times[tag]);
  printf("%s:%d\n", tag, time);
}
