var fs     = require('fs');
var xml2js = require('xml2js');
var data   = fs.readFileSync(__dirname + '/../.compiled/toc.xml', 'ascii');
var parser = new xml2js.Parser();
var pages  = [];

function findItemsRecursively(holder, node) {
	if ( ! node.item) return;
	node.item.forEach(function (item) {
		if (item['$'].title) {
			var page = {
				title: item['$'].title,
				page: parseInt(item['$'].page, 10),
				subpages: []
			};
			holder.push(page);
			findItemsRecursively(page.subpages, item);
			if ( ! page.subpages.length) {
				delete page.subpages;
			}
		} else {
			findItemsRecursively(holder, item);
		}
	});
}

parser.parseString(data, function (err, result) {
	if (err) {
		return;
	}
	findItemsRecursively(pages, result.outline);
});

console.log(JSON.stringify(pages));
