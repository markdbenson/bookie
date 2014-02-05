var selection;
var title = document.title;
title = prompt("Edit title:", title);
var url = document.URL;
var slug = title2slug(title);
var date = ymd(new Date());
var time = hms(new Date());
var categories = "notabene";
var layout = "post";
var dir = "~/vanilladraft/_source/notabene";

function ymd(date) {
    var d = date.getDate();
    var m = date.getMonth() + 1;
    var y = date.getFullYear();
    return '' + y + '-' + (m<=9 ? '0' + m : m) + '-' + (d <= 9 ? '0' + d : d);
}

function hms(date) {
    var h = date.getHours();
    var m = date.getMinutes();
    var s = date.getSeconds();

    return '' + (h <= 9 ? '0' + h : h) + ':' + (m <= 9 ? '0' + m : m) + ':' + (s <= 9 ? '0' + s : s);
}

function title2slug(str) {
    return str 
        .toLowerCase()
        .replace(/[^\w ]+/g,'')
        .replace(/ +/g,'-')
        ; 
}

try {
    selection =
        ((window.getSelection && window.getSelection()) ||
         (document.getSelection && document.getSelection()) ||
         (document.selection && document.selection.createRange && document.selection.createRange().text));

} catch(e) {
    selection ="";
}

cat = "".concat("cd ", dir, " && cat > ", date, "-", slug, ".md << EOF\n");

alert(cat.concat("---\nlayout: ", layout, "\ntitle: \"",title,"\"\ndate: ", date, " ", time, "\ncategories: ", categories, "\nlink: ", url, "\n---\n\n> ", selection, "\n\nEOF\nvi ", date, "-", slug, ".md"));

