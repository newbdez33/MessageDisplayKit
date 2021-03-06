//
//  XHDemoWeChatMessageTableViewController.m
//  MessageDisplayExample
//
//  Created by qtone-1 on 14-4-27.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHDemoWeChatMessageTableViewController.h"

@interface XHDemoWeChatMessageTableViewController ()

@property (nonatomic, strong) NSArray *emotionManagers;

@end

@implementation XHDemoWeChatMessageTableViewController

- (XHMessage *)getTextMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *textMessage = [[XHMessage alloc] initWithText:@"这是华捷微信，为什么模仿这个页面效果呢？希望微信团队能看到我们在努力，请微信团队给个机会，让我好好的努力靠近大神，希望自己也能发亮，好像有点过分的希望了，如果大家喜欢这个开源库，请大家帮帮忙支持这个开源库吧！我是Jack，叫华仔也行，曾宪华就是我啦！Call Me 15915895880" sender:@"华仔" timestamp:[NSDate distantPast]];
    textMessage.avator = [UIImage imageNamed:@"avator"];
    textMessage.avatorUrl = @"http://www.pailixiu.com/jack/meIcon@2x.png";
    textMessage.bubbleMessageType = bubbleMessageType;
    
    return textMessage;
}

- (XHMessage *)getPhotoMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *photoMessage = [[XHMessage alloc] initWithPhoto:[UIImage imageNamed:@"placeholderImage"] thumbnailUrl:@"http://www.pailixiu.com/jack/networkPhoto.png" originPhotoUrl:nil sender:@"Jack" timestamp:[NSDate date]];
    photoMessage.avator = [UIImage imageNamed:@"avator"];
    photoMessage.avatorUrl = @"http://www.pailixiu.com/jack/JieIcon@2x.png";
    photoMessage.bubbleMessageType = bubbleMessageType;
    
    return photoMessage;
}

- (XHMessage *)getVideoMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *videoMessage = [[XHMessage alloc] initWithVideoConverPhoto:[UIImage imageNamed:@"placeholderImage"] videoPath:@"http://www.pailixiu.com/jack/networkPhoto.png" videoUrl:nil sender:@"Jayson" timestamp:[NSDate date]];
    videoMessage.avator = [UIImage imageNamed:@"avator"];
    videoMessage.avatorUrl = @"http://www.pailixiu.com/jack/JieIcon@2x.png";
    videoMessage.bubbleMessageType = bubbleMessageType;
    
    return videoMessage;
}

- (XHMessage *)getVoiceMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *voiceMessage = [[XHMessage alloc] initWithVoicePath:nil voiceUrl:nil sender:@"Jayson" timestamp:[NSDate date]];
    voiceMessage.avator = [UIImage imageNamed:@"avator"];
    voiceMessage.avatorUrl = @"http://www.pailixiu.com/jack/JieIcon@2x.png";
    voiceMessage.bubbleMessageType = bubbleMessageType;
    
    return voiceMessage;
}

- (XHMessage *)getEmotionMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *emotionMessage = [[XHMessage alloc] initWithEmotionPath:[[NSBundle mainBundle] pathForResource:@"Demo0.gif" ofType:nil] sender:@"Jayson" timestamp:[NSDate date]];
    emotionMessage.avator = [UIImage imageNamed:@"avator"];
    emotionMessage.avatorUrl = @"http://www.pailixiu.com/jack/JieIcon@2x.png";
    emotionMessage.bubbleMessageType = bubbleMessageType;
    
    return emotionMessage;
}

- (XHMessage *)getGeolocationsMessageWithBubbleMessageType:(XHBubbleMessageType)bubbleMessageType {
    XHMessage *localPositionMessage = [[XHMessage alloc] initWithLocalPositionPhoto:[UIImage imageNamed:@"Fav_Cell_Loc"] geolocations:@"中国广东省广州市天河区东圃二马路121号" location:[[CLLocation alloc] initWithLatitude:23.110099 longitude:113.401329] sender:@"Jack" timestamp:[NSDate date]];
    localPositionMessage.avator = [UIImage imageNamed:@"avator"];
    localPositionMessage.avatorUrl = @"http://www.pailixiu.com/jack/meIcon@2x.png";
    localPositionMessage.bubbleMessageType = bubbleMessageType;
    
    return localPositionMessage;
}



- (void)loadDemoDataSource {
    self.messageSender = @"Jack";
    WEAKSELF
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSMutableArray *messages = [[NSMutableArray alloc] init];
        
        for (NSInteger i = 0; i < 10; i ++) {
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            [messages addObject:[self getTextMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            
            [messages addObject:[self getPhotoMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            
            [messages addObject:[self getVideoMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            
            [messages addObject:[self getVoiceMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            
            [messages addObject:[self getEmotionMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
            
            [messages addObject:[self getGeolocationsMessageWithBubbleMessageType:(i % 2) ? XHBubbleMessageTypeSending : XHBubbleMessageTypeReceiving]];
        }
        
        for (NSUInteger i = 0; i < 3; i++) {
            [messages addObjectsFromArray:messages];
        }
        
        [messages addObject:[self getTextMessageWithBubbleMessageType:XHBubbleMessageTypeSending]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.messages = messages;
            [weakSelf.messageTableView reloadData];
            
            [weakSelf scrollToBottomAnimated:NO];
        });
    });
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Custom UI
    //    [self setBackgroundColor:[UIColor clearColor]];
    //    [self setBackgroundImage:[UIImage imageNamed:@"TableViewBackgroundImage"]];
    
    // 添加第三方接入数据
    NSMutableArray *shareMenuItems = [NSMutableArray array];
    NSArray *plugIcons = @[@"sharemore_pic", @"sharemore_video", @"sharemore_location", @"sharemore_friendcard", @"sharemore_myfav", @"sharemore_wxtalk", @"sharemore_videovoip", @"sharemore_voiceinput", @"sharemore_openapi", @"sharemore_openapi"];
    NSArray *plugTitle = @[@"照片", @"拍摄", @"位置", @"名片", @"我的收藏", @"实时对讲机", @"视频聊天", @"语音输入", @"大众点评", @"应用"];
    for (NSInteger i = 0; i < 10; i ++) {
        XHShareMenuItem *shareMenuItem = [[XHShareMenuItem alloc] initWithNormalIconImage:[UIImage imageNamed:[plugIcons objectAtIndex:i]] title:[plugTitle objectAtIndex:i]];
        [shareMenuItems addObject:shareMenuItem];
    }
    
    NSMutableArray *emotionManagers = [NSMutableArray array];
    for (NSInteger i = 0; i < 10; i ++) {
        XHEmotionManager *emotionManager = [[XHEmotionManager alloc] init];
        
        NSMutableArray *emotions = [NSMutableArray array];
        for (NSInteger j = 0; j < 32; j ++) {
            XHEmotion *emotion = [[XHEmotion alloc] init];
            NSString *imageName = [NSString stringWithFormat:@"section%ld_emotion%ld", (long)i , (long)j % 16];
            emotion.emotionPath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Demo%d.gif", j % 2] ofType:@""];
            emotion.emotionConverPhoto = [UIImage imageNamed:imageName];
            [emotions addObject:emotion];
        }
        emotionManager.emotions = emotions;
        
        [emotionManagers addObject:emotionManager];
    }
    
    self.emotionManagers = emotionManagers;
    [self.emotionManagerView reloadData];
    
    self.shareMenuItems = shareMenuItems;
    [self.shareMenuView reloadData];
    
    [self loadDemoDataSource];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    self.emotionManagers = nil;
}

#pragma mark - UITableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    [self removeMessageAtIndexPath:indexPath];
    //    [self insertOldMessages:self.messages];
}

#pragma mark - XHEmotionManagerView DataSource

- (NSInteger)numberOfEmotionManagers {
    return self.emotionManagers.count;
}

- (XHEmotionManager *)emotionManagerForColumn:(NSInteger)column {
    return [self.emotionManagers objectAtIndex:column];
}

- (NSArray *)emotionManagersAtManager {
    return self.emotionManagers;
}

#pragma mark - XHMessageTableViewController Delegate

/**
 *  发送文本消息的回调方法
 *
 *  @param text   目标文本字符串
 *  @param sender 发送者的名字
 *  @param date   发送时间
 */
- (void)didSendText:(NSString *)text fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithText:text sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessageText];
}

/**
 *  发送图片消息的回调方法
 *
 *  @param photo  目标图片对象，后续有可能会换
 *  @param sender 发送者的名字
 *  @param date   发送时间
 */
- (void)didSendPhoto:(UIImage *)photo fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithPhoto:photo thumbnailUrl:nil originPhotoUrl:nil sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessagePhoto];
}

/**
 *  发送视频消息的回调方法
 *
 *  @param videoPath 目标视频本地路径
 *  @param sender    发送者的名字
 *  @param date      发送时间
 */
- (void)didSendVideoConverPhoto:(UIImage *)videoConverPhoto videoPath:(NSString *)videoPath fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithVideoConverPhoto:videoConverPhoto videoPath:videoPath videoUrl:nil sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessageVideo];
}

/**
 *  发送语音消息的回调方法
 *
 *  @param voicePath 目标语音本地路径
 *  @param sender    发送者的名字
 *  @param date      发送时间
 */
- (void)didSendVoice:(NSString *)voicePath fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithVoicePath:voicePath voiceUrl:nil sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessageVoice];
}

/**
 *  发送第三方表情消息的回调方法
 *
 *  @param facePath 目标第三方表情的本地路径
 *  @param sender   发送者的名字
 *  @param date     发送时间
 */
- (void)didSendEmotion:(NSString *)emotionPath fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithEmotionPath:emotionPath sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessageFace];
}

/**
 *  有些网友说需要发送地理位置，这个我暂时放一放
 */
- (void)didSendGeoLocationsPhoto:(UIImage *)geoLocationsPhoto geolocations:(NSString *)geolocations location:(CLLocation *)location fromSender:(NSString *)sender onDate:(NSDate *)date {
    [self addMessage:[[XHMessage alloc] initWithLocalPositionPhoto:geoLocationsPhoto geolocations:geolocations location:location sender:sender timestamp:date]];
    [self finishSendMessageWithBubbleMessageType:XHBubbleMessageLocalPosition];
}

/**
 *  是否显示时间轴Label的回调方法
 *
 *  @param indexPath 目标消息的位置IndexPath
 *
 *  @return 根据indexPath获取消息的Model的对象，从而判断返回YES or NO来控制是否显示时间轴Label
 */
- (BOOL)shouldDisplayTimestampForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2)
        return YES;
    else
        return NO;
}

/**
 *  配置Cell的样式或者字体
 *
 *  @param cell      目标Cell
 *  @param indexPath 目标Cell所在位置IndexPath
 */
- (void)configureCell:(XHMessageTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 4) {
        cell.messageBubbleView.messageDisplayTextView.textColor = [UIColor colorWithRed:0.106 green:0.586 blue:1.000 alpha:1.000];
    } else {
        cell.messageBubbleView.messageDisplayTextView.textColor = [UIColor blackColor];
    }
}

/**
 *  协议回掉是否支持用户手动滚动
 *
 *  @return 返回YES or NO
 */
- (BOOL)shouldPreventScrollToBottomWhileUserScrolling {
    return YES;
}

@end
