f=()=>
{
    const { exec } = require('child_process');
    var i = 5;
    if (i === -1) return;
    var n = `Sully_${i}.js`;
    require('fs').writeFileSync(n,'f='+f.toString().replace(i, i - 1)+';f();\n');
    i--;
    exec(`node ${n}`);
};f();