File.write("testfile", "foo")
sleep 10
File.write("testfile", "bar")
sleep 10
File.chmod(0644, "testfile")
sleep 10
File.read("testfile")
p File.stat("testfile").birthtime
p File.stat("testfile").mtime
p File.stat("testfile").ctime
p File.stat("testfile").atime
