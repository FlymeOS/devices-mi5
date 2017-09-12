.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final MIUI_TYPEFACE_FAMILY:Ljava/lang/String; = "miui"

.field private static mFontsWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentTypefaces:[Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldTypeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v1, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "newTypeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->usingMiuiFonts(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    if-eqz p1, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    :cond_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_2

    .line 250
    const-class v4, Lmiui/util/TypefaceUtils;

    monitor-enter v4

    .line 251
    :try_start_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_1

    .line 252
    const/4 v3, 0x4

    new-array v2, v3, [Landroid/graphics/Typeface;

    .line 253
    .local v2, "typefaces":[Landroid/graphics/Typeface;
    const/4 v3, 0x0

    const-string v5, "miui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    .line 254
    const/4 v3, 0x1

    const-string v5, "miui"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    .line 255
    const/4 v3, 0x2

    const-string v5, "miui"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    .line 256
    const/4 v3, 0x3

    const-string v5, "miui"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    .line 257
    sput-object v2, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 259
    .end local v2    # "typefaces":[Landroid/graphics/Typeface;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_2
    if-nez p1, :cond_4

    .line 262
    .local v1, "style":I
    :goto_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v0, v3, v1

    .line 265
    .end local v1    # "style":I
    :cond_3
    if-nez v0, :cond_5

    .end local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :goto_1
    return-object p1

    .line 259
    .restart local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 261
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 265
    goto :goto_1
.end method

.method public static usingMiuiFonts(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 26
    :cond_0
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    .line 32
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.UCMobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qzone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qvod.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kugou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.taobao.taobao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.BaiduMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youku.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sds.android.ttpod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo.appstore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.pplive.androidphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.minihd.qq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "tv.pps.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.shuqi.controller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.storm.smart"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qbx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.moji.mjweather"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.renren.mobile.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duokan.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qiyi.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.WBlog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "qsbk.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.netease.newsreader.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.newsclient"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mtt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.tieba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wochacha"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.shop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mt.mtxx.mtxx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe.opti.powerctl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dragon.android.pandaspace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.etouch.ecalendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.changba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqlive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.chaozh.iReaderFree"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.snda.wifilocating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duowan.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hiapk.marketpho"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe.opti"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.com.fetion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.nd.android.pandahome2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youdao.dict"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.kuwo.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.moffice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alibaba.mobileim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.letv.android.client"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.searchbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.funshion.video.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.gau.go.launcherex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qq.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duomi.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.meitu.meiyancamera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.nd.android.pandareader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kingsoft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cleanmaster.mguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.sohuvideo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jingdong.app.mall"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "bubei.tingshu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alipay.android.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "vStudio.Android.Camera360"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.androidesk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ss.android.article.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "org.funship.findsomething.withRK"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mybook66"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.token"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tmall.wireless"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqgame.qqlordwvga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.budejie.www"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sankuai.meituan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kascend.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.android.pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.muzhiwan.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mymoney"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.browser.apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.geili.koudai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.androidqqmail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.myzaker.ZAKER_Phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ifeng.news2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.handsgo.jiakao.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hexin.plat.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqphonebook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "my.beautyCamera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.autonavi.minimap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cubic.autohome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.clov4r.android.nil"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yangzhibin.chengrenxiaohua"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianxinos.powermanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.duba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wuba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "sina.mobile.tianqitong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mandi.lol"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duowan.lolbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.chinamworld.main"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ss.android.essay.joke"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "air.com.tencent.qqpasture"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kingreader.framework"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.ibuka.manga.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ting.mp3.qianqian.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jiubang.goscreenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.shoujiduoduo.ringtone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.lbe.security"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.snda.youni"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jiasoft.swreader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.anyview"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.appsearch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.zdworks.android.zdclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.antutu.ABenchMark"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "dopool.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.uc.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.mguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "bdmobile.android.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alensw.PicFolder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.topic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.oupeng.mini.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.launcher.screenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.meilishuo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qidian.QDReader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.research.drop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sinovatech.unicom.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianping.v1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianxinos.dxhome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yiche.price"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.iBookStar.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.dazhihui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.moffice_eng"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.taobao.wwseller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.icbc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.chinabus.main"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ganji.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ting.mp3.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hy.minifetion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mogujie"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baozoumanhua.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.calendar.UI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wacai365"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cnvcs.junqi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.cntv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xunlei.kankan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xikang.android.slimcoach"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.thunder.ktvdaren"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.goapk.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.htjyb.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.blovestorm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "me.papa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.when.android.calendar365"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.wallpaper.livepicker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.vancl.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.netease.mkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youba.barcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hupu.games"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kandian.vodapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dewmobile.kuaiya"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.anguanjia.safe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tudou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cmb.pb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.weico.sinaweibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ireadercity.b2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.livespace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.estrongs.android.pop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.disney.WMW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tuan800.tao800"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.byread.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "me.imid.fuubo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.lingdong.client.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mop.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sina.mfweibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cld.navi.mainframe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mappn.gfan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.pengyou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xunlei.downloadprovider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mx.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.jr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.smarthome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.miui.backup.transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.input_miv6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.input_mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wali.live"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
