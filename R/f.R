crash_dumps <- new.env()

f <- function() {
  x <- runif(1e5)
  dump <- lapply(1:2, function(i) unserialize(serialize(sys.frames(), NULL)))
  assign("last.dump", dump, crash_dumps)
}
