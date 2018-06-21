// Generated by CoffeeScript 2.3.1
(function() {
  var chmod, chokidar, fs, readFile, rename, util, watcher, writeFile;

  util = require('util');

  fs = require('fs');

  rename = util.promisify(fs.rename);

  readFile = util.promisify(fs.readFile);

  writeFile = util.promisify(fs.writeFile);

  chmod = util.promisify(fs.chmod);

  chokidar = require('chokidar');

  watcher = chokidar.watch('./bin/*');

  watcher.on('ready', function() {
    return console.log('監視開始');
  });

  watcher.on('add', async function(path) {
    var data, e, newPath;
    console.log(`追加ファイル-> ${path}`);
    if (/\.js$/.test(path)) {
      try {
        data = (await readFile(path, {
          encoding: 'utf8'
        }));
        data = '#!/usr/bin/env node\n' + data;
        await writeFile(path, data, {
          mode: 755
        });
        newPath = path.replace('.js', '');
        await rename(path, newPath);
        return (await chmod(newPath, '755'));
      } catch (error1) {
        e = error1;
        throw e;
      }
    }
  });

  watcher.on('addDir', function(path) {
    return console.log(`追加ディレクトリ-> ${path}`);
  });

  watcher.on('unlink', function(path) {
    return console.log(`削除されました-> ${path}`);
  });

  watcher.on('unlinkDir', function(path) {
    return console.log(`削除されました-> ${path}`);
  });

  watcher.on('change', function(path) {
    return console.log(`修正されました-> ${path}`);
  });

  watcher.on('error', function(error) {
    return console.log(`エラーです-> ${error}`);
  });

}).call(this);