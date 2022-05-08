//
//  main.m
//  File
//
//  Created by 陳峻琦 on 22/4/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //MARK: - 将NSString对象读写入文件
        NSMutableString *str = [NSMutableString new];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"cool!\n"];
        }
        
        NSError *error;
        //写入文件
        bool success = [str writeToFile:@"cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        if (success) {
            NSLog(@"done writing");
        } else {
            NSLog(@"error: %@", [error localizedDescription]);
        }
        
        //读取文件
        NSString *read_str = [[NSString alloc] initWithContentsOfFile:@"cool.txt"
                                                             encoding:NSUTF8StringEncoding
                                                                error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"looks like this: %@", read_str);
        }
        
        //MARK: - 将NSData对象保存的数据读写入文件
        //写入
        NSURL *url = [NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimgm3.cnmo.com%2Fuser%2Farticle%2F147422%2Forigin%2Farad9U4eIRFo.jpeg&refer=http%3A%2F%2Fimgm3.cnmo.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653203458&t=543fc8e8515ebb5ae11af46d6cfc2d04"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *err = nil;

        //这行代码会阻塞程序，直至下载完成全部数据
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&err];
        if (!data) {
            NSLog(@"fetch failed: %@", [err localizedDescription]);
            
            return 1;
        }
        NSLog(@"the file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"nsdataFile"
                                 options:NSDataWritingAtomic //保证文件的完整性，具备原子性
                                   error:&err];
        if (!written) {
            NSLog(@"write failed %@", [err localizedDescription]);
            return 1;
        }
        NSLog(@"success");
        
        //读取
        NSData *readData = [NSData dataWithContentsOfFile:@"nsdataFile"];
        NSLog(@"the file read from the disk has %lu bytes", (unsigned long)[readData length]);
        
        //寻找指定目录
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES); //寻找桌面文件夹
        NSString *desktopPath = desktops[0];
        NSLog(@"path is %@", desktopPath);
    }
    return 0;
}
