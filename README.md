# Vigilem
  cross platform device (currently just keyboard) DOM watcher

## Description
  Vigilem is a meta-gem, which depends on vigilem-assembly (which in turn depends on vigilem-win32_api-stat, vigilem-evdev-stat)
  Vigilem installs, depending on the platform, vigilem-win32_api or vigilem-evdev.
  
## installation
    $gem install vigilem
    
    (evdev/linux will ask for sudo/rvmsudo password)
    
## examples
```ruby
  #with sudo
  require 'vigilem/keyboard'
  k = Vigilem::Keyboard.new
  k.read_one
```

## known_issues
   - doesn't work on Mac or Bsd
   - evdev load time it awful
   - mapping/charset issues on evdev
   - no write ability only read
   
## rbenv, rvm
   - rvm comes with sudo
   - for rbenv install https://github.com/dcarley/rbenv-sudo
   
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

## Also see

* [http://github.com/jtzero/vigilem-assembly](http://github.com/jtzero/vigilem-assembly)
* [http://github.com/jtzero/vigilem-core](http://github.com/jtzero/vigilem-core)
* [http://github.com/jtzero/vigilem-evdev](http://github.com/jtzero/vigilem-evdev)
* [http://github.com/jtzero/vigilem-win32_api](http://github.com/jtzero/vigilem-win32_api)
