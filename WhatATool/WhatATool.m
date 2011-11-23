#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void PrintPathInfo() {
	NSLog(@"My home folder is at '%@'",[@"~" stringByResolvingSymlinksInPath]);
}
void PrintProcessInfo() {
	NSProcessInfo *pi = [NSProcessInfo processInfo];
	NSLog(@"Process Name: '%@' Process ID: '%i'",[pi processName],[pi processIdentifier]);
}
void PrintBookmarkInfo() {
	NSMutableDictionary *bookmarks = [NSMutableDictionary dictionary];
	[bookmarks setObject:[NSURL URLWithString:@"http://www.stanford.edu"] forKey:@"Stanford University"];
	[bookmarks setObject:[NSURL URLWithString:@"http://www.apple.com"] forKey:@"Apple"];
	[bookmarks setObject:[NSURL URLWithString:@"http://cs193p.stanford.edu"] forKey:@"CS193P"];
	[bookmarks setObject:[NSURL URLWithString:@"http://itunes.stanford.edu"] forKey:@"Stanford on iTunes U"];
	[bookmarks setObject:[NSURL URLWithString:@"http://stanfordshop.com"] forKey:@"Stanford Mall"];
	for (NSEnumerator *e in bookmarks) {
		NSLog(@"Key: '%@' URL: '%@'",[e description],[bookmarks objectForKey:[e description]]);
	}
	//NSLog(@"My BookmarkInfo is at %@",[bookmarks description]);
}
void PrintIntrospectionInfo() {
	NSMutableArray *array =[NSMutableArray array];
	[array addObject:@"Shim"];
	[array addObject:[NSURL URLWithString:@"http://www.stanford.edu"]];
	[array addObject:[NSProcessInfo processInfo]];
	[array addObject:[NSDictionary dictionary]];
	for (NSObject *obj in array) {
		NSLog(@"Class Name: %@",[obj class]);
		NSLog(@"Is Member of NSString %@",[obj isMemberOfClass:[NSString class]]?@"YES":@"NO");
		NSLog(@"Is Kind of NSString %@",[obj isKindOfClass:[NSString class]]?@"YES":@"NO");
		NSLog(@"Responds to lowercaseString %@",[obj respondsToSelector:@selector(lowercaseString)]?@"YES":@"NO");
		if ([obj respondsToSelector:@selector(lowercaseString)]) {
			NSLog(@"%@",[obj lowercaseString]);
		}
		NSLog(@"===================================");
	}
}
void PrintPolygonInfo() {
	NSMutableArray *array = [[NSMutableArray alloc] init];
	[array addObject:[[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7]];
	[array addObject:[[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9]];
	[array addObject:[[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12]];
	for (PolygonShape* poly in array) {
		NSLog(@"%@",[poly description]);
	}
}
int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	PrintPathInfo();
	PrintProcessInfo();
	PrintBookmarkInfo();
	PrintIntrospectionInfo();
	PrintPolygonInfo();
    [pool drain];
    return 0;
}
