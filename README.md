# Vigilem
  cross platform device (currently just keyboard) DOM watcher
  
## installation
    $gem install vigilem
    
    (evdev/linux will ask for sudo/rvmsudo password)
    
## examples
```ruby
  require 'vigilem/keboard'
  k = Vigilem::Keyboard.new
  k.read_one
```

## known_issues
   - doesn't work on Mac or Bsd
   - evdev load time it awful
   - mapping/charset issues on evdev
   - no write ability only read
   
## tested on
   - ruby 2.0.0 [x64-mingw32] mri
   - Linux kernels 3.15, 3.2.0
   - ruby 2.0.0 x64 Linux mri
   - ruby 2.0.0 x32 Linux mri
  
## Roadmap
 + 1.0.0:
   - @todo's, bug fixes, evdev load performance
   - Mac/Bsd
   - mouse
   - jettison system items to own gems
   - less brittel tests
 + next
   - real Xwindow backend
   - use an idl compiler
   - complete ffi items
 + looking forward
   - WindowsRT/touch events/ next gen win api
   - wayland/mir etc
